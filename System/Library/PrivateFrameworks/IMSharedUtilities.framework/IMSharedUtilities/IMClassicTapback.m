@interface IMClassicTapback
+ (id)classicTapbackOptions;
- (IMClassicTapback)counterpart;
- (IMClassicTapback)initWithAssociatedMessageType:(int64_t)a3;
- (IMClassicTapback)removedTapbackCounterpart;
- (IMClassicTapback)visibleTapbackCounterpart;
- (id)actionStringFormatWithAdaptiveImageGlyphAvailable:(BOOL)a3;
@end

@implementation IMClassicTapback

- (IMClassicTapback)initWithAssociatedMessageType:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = IMClassicTapback;
  return [(IMTapback *)&v4 initWithAssociatedMessageType:a3];
}

- (id)actionStringFormatWithAdaptiveImageGlyphAvailable:(BOOL)a3
{
  v4 = [(IMTapback *)self associatedMessageType];
  if (v4 > 2005)
  {
    if (v4 <= 3002)
    {
      if (v4 <= 3000)
      {
        if ((v4 - 2006) >= 2)
        {
          v5 = v4 == 3000;
          v6 = @"Removed a heart from";
LABEL_29:
          if (v5)
          {
            v16 = v6;
          }

          else
          {
            v16 = 0;
          }

          goto LABEL_46;
        }

        goto LABEL_36;
      }

      v7 = @"Removed a like from";
      v8 = @"Removed a dislike from";
      if (v4 != 3002)
      {
        v8 = 0;
      }

      v10 = v4 == 3001;
    }

    else
    {
      if (v4 > 3005)
      {
        if ((v4 - 3006) >= 2 && v4 != 4000)
        {
LABEL_39:
          v16 = 0;
          goto LABEL_46;
        }

LABEL_36:
        v17 = IMLogHandleForCategory("IMClassicTapback");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C0CDC(self, v17);
        }

        goto LABEL_39;
      }

      v7 = @"Removed a laugh from";
      v8 = @"Removed an exclamation from";
      v9 = @"Removed a question mark from";
      if (v4 != 3005)
      {
        v9 = 0;
      }

      if (v4 != 3004)
      {
        v8 = v9;
      }

      v10 = v4 == 3003;
    }

    if (v10)
    {
      v16 = v7;
    }

    else
    {
      v16 = v8;
    }
  }

  else
  {
    if (v4 <= 2000)
    {
      if ((v4 > 3 || v4 == 1) && (v4 - 1000) >= 2)
      {
        v5 = v4 == 2000;
        v6 = @"Loved";
        goto LABEL_29;
      }

      goto LABEL_36;
    }

    v11 = @"Laughed at";
    v12 = @"Emphasized";
    v13 = @"Questioned";
    if (v4 != 2005)
    {
      v13 = 0;
    }

    if (v4 != 2004)
    {
      v12 = v13;
    }

    if (v4 != 2003)
    {
      v11 = v12;
    }

    v14 = @"Liked";
    v15 = @"Disliked";
    if (v4 != 2002)
    {
      v15 = 0;
    }

    if (v4 != 2001)
    {
      v14 = v15;
    }

    if (v4 <= 2002)
    {
      v16 = v14;
    }

    else
    {
      v16 = v11;
    }
  }

LABEL_46:
  v18 = [[IMTapbackSummaryActionStringFormat alloc] initWithActionStringFormat:v16 requiresReactionReplacment:0];

  return v18;
}

- (IMClassicTapback)removedTapbackCounterpart
{
  if ([(IMTapback *)self isRemoved])
  {
    v3 = self;
  }

  else
  {
    v3 = [[IMClassicTapback alloc] initWithAssociatedMessageType:IMCounterpartAcknowledgmentTypeForAcknowledgmentType([(IMTapback *)self associatedMessageType])];
  }

  return v3;
}

- (IMClassicTapback)visibleTapbackCounterpart
{
  if ([(IMTapback *)self isRemoved])
  {
    v3 = [[IMClassicTapback alloc] initWithAssociatedMessageType:IMCounterpartAcknowledgmentTypeForAcknowledgmentType([(IMTapback *)self associatedMessageType])];
  }

  else
  {
    v3 = self;
  }

  return v3;
}

- (IMClassicTapback)counterpart
{
  if ([(IMTapback *)self isRemoved])
  {
    [(IMClassicTapback *)self visibleTapbackCounterpart];
  }

  else
  {
    [(IMClassicTapback *)self removedTapbackCounterpart];
  }
  v3 = ;

  return v3;
}

+ (id)classicTapbackOptions
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [[IMClassicTapback alloc] initWithAssociatedMessageType:2000];
  v3 = [[IMClassicTapback alloc] initWithAssociatedMessageType:2001];
  v4 = [[IMClassicTapback alloc] initWithAssociatedMessageType:2002];
  v5 = [[IMClassicTapback alloc] initWithAssociatedMessageType:2003];
  v6 = [[IMClassicTapback alloc] initWithAssociatedMessageType:2004];
  v7 = [[IMClassicTapback alloc] initWithAssociatedMessageType:2005];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

@end