@interface OITSUFormatObject
+ (id)defaultDateFormat:(id)a3;
+ (id)defaultDurationFormat;
- ($37D1E9AA147035CEEFF2BA7CE0E7535D)formatStruct;
- (BOOL)isEqual:(id)a3;
- (OITSUFormatObject)init;
- (OITSUFormatObject)initWithTSUFormatFormatStruct:(id *)a3;
- (OITSUFormatObject)initWithTSUFormatFormatStruct:(id *)a3 useExpandedContents:(BOOL)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)p_setFormatStruct:(id *)a3;
@end

@implementation OITSUFormatObject

+ (id)defaultDateFormat:(id)a3
{
  if (!a3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUFormatStructDate TSUDefaultFormatStructDate(OITSULocale *)"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFormatStructUtilities.h"], 89, 0, "A locale is required.");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v6[0] = 261;
  v6[1] = 0;
  v6[2] = TSUDefaultDateTimeFormat(a3);
  v6[3] = 0;
  v6[4] = 0;
  return [objc_alloc(objc_opt_class()) initWithTSUFormatFormatStruct:v6];
}

+ (id)defaultDurationFormat
{
  v5 = 0;
  v6 = 0;
  v3 = 268;
  v4 = xmmword_25D6FA710;
  return [objc_alloc(objc_opt_class()) initWithTSUFormatFormatStruct:&v3];
}

- (OITSUFormatObject)init
{
  v7.receiver = self;
  v7.super_class = OITSUFormatObject;
  v2 = [(OITSUFormatObject *)&v7 init];
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUFormatObject init]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFormatObject.m"], 48, 0, "don't call this. call initWithFormatStruct");
    +[OITSUAssertionHandler logBacktraceThrottled];
    v5 = v3;
  }

  return 0;
}

- (OITSUFormatObject)initWithTSUFormatFormatStruct:(id *)a3 useExpandedContents:(BOOL)a4
{
  v13.receiver = self;
  v13.super_class = OITSUFormatObject;
  v6 = [(OITSUFormatObject *)&v13 init];
  if (v6)
  {
    v7 = *&a3->var1.var7.var2;
    v11[0] = *&a3->var0;
    v11[1] = v7;
    v12 = *(&a3->var1.var7 + 3);
    TSUFormatStructRetain(v11);
    v8 = *&a3->var0;
    v9 = *&a3->var1.var7.var2;
    *(v6 + 5) = *(&a3->var1.var7 + 3);
    *(v6 + 24) = v9;
    *(v6 + 8) = v8;
    v6[48] = a4;
  }

  return v6;
}

- (OITSUFormatObject)initWithTSUFormatFormatStruct:(id *)a3
{
  v3 = *&a3->var1.var7.var2;
  v5[0] = *&a3->var0;
  v5[1] = v3;
  v6 = *(&a3->var1.var7 + 3);
  return [(OITSUFormatObject *)self initWithTSUFormatFormatStruct:v5 useExpandedContents:0];
}

- (void)dealloc
{
  v3 = *&self->mFormatStruct.var0.mMultipleChoiceListFormatStruct.mData;
  v5[0] = *&self->mFormatStruct.mFormatType;
  v5[1] = v3;
  v6 = *(&self->mFormatStruct.var0.mMultipleChoiceListFormatStruct + 3);
  TSUFormatStructRelease(v5);
  v4.receiver = self;
  v4.super_class = OITSUFormatObject;
  [(OITSUFormatObject *)&v4 dealloc];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [OITSUMutableFormatObject alloc];
  if (self)
  {
    [(OITSUFormatObject *)self formatStruct];
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
  }

  return [(OITSUFormatObject *)v4 initWithTSUFormatFormatStruct:v6 useExpandedContents:self->mUseExpandedContents];
}

- ($37D1E9AA147035CEEFF2BA7CE0E7535D)formatStruct
{
  v3 = *(&self->var1.var7 + 1);
  *&retstr->var0 = *&self->var1.var0;
  *&retstr->var1.var7.var2 = v3;
  *(&retstr->var1.var7 + 3) = *&self[1].var0;
  return self;
}

- (void)p_setFormatStruct:(id *)a3
{
  v5 = *&a3->var1.var7.var2;
  v9 = *&a3->var0;
  v10 = v5;
  v11 = *(&a3->var1.var7 + 3);
  TSUFormatStructRetain(&v9);
  v6 = *&self->mFormatStruct.var0.mMultipleChoiceListFormatStruct.mData;
  v9 = *&self->mFormatStruct.mFormatType;
  v10 = v6;
  v11 = *(&self->mFormatStruct.var0.mMultipleChoiceListFormatStruct + 3);
  TSUFormatStructRelease(&v9);
  v7 = *&a3->var0;
  v8 = *&a3->var1.var7.var2;
  *(&self->mFormatStruct.var0.mMultipleChoiceListFormatStruct + 3) = *(&a3->var1.var7 + 3);
  *&self->mFormatStruct.var0.mMultipleChoiceListFormatStruct.mData = v8;
  *&self->mFormatStruct.mFormatType = v7;
}

- (unint64_t)hash
{
  if (self->mUseExpandedContents && (self->mFormatStruct.mFormatType - 270) <= 2)
  {
    mDateTimeFormat = self->mFormatStruct.var0.mDateFormatStruct.mDateTimeFormat;
    if (mDateTimeFormat)
    {
      return [(NSString *)mDateTimeFormat hash]^ self->mFormatStruct.var0.mCustomFormatStruct.mAppliedConditionKey;
    }
  }

  v5 = *&self->mFormatStruct.var0.mMultipleChoiceListFormatStruct.mData;
  v6[0] = *&self->mFormatStruct.mFormatType;
  v6[1] = v5;
  v7 = *(&self->mFormatStruct.var0.mMultipleChoiceListFormatStruct + 3);
  return TSUFormatStructHash(v6);
}

- (BOOL)isEqual:(id)a3
{
  v5 = objc_opt_class();
  v6 = TSUSpecificCast(v5, a3);
  if (v6 || (v7 = objc_opt_class(), (v6 = TSUSpecificCast(v7, a3)) != 0))
  {
    v8 = v6;
    mUseExpandedContents = self->mUseExpandedContents;
    if (mUseExpandedContents != [v6 useExpandedContents])
    {
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUFormatObject isEqual:]"];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v13, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFormatObject.m"], 112, 0, "The useExpandedContents flag depends on external context, and should be the same for all formats compared in that context.");
      +[OITSUAssertionHandler logBacktraceThrottled];
      goto LABEL_25;
    }

    if (self->mUseExpandedContents && (self->mFormatStruct.mFormatType - 270) <= 2)
    {
      if (self->mFormatStruct.var0.mDateFormatStruct.mDateTimeFormat)
      {
        [v8 formatStruct];
        if ((v29 - 270) <= 2)
        {
          [v8 formatStruct];
          if (v28)
          {
            [v8 formatStruct];
            *v20 = v26;
            *&v20[16] = v27;
            v32 = *&self->mFormatStruct.var0.mNumberFormatStruct;
            mIncrement = self->mFormatStruct.var0.mControlFormatStruct.mIncrement;
            LODWORD(v6) = TSUFormatStructCustomEqualKeys(&v32, v20);
            if (!v6)
            {
              return v6;
            }

            mAppliedConditionKey = self->mFormatStruct.var0.mCustomFormatStruct.mAppliedConditionKey;
            [v8 formatStruct];
            if (mAppliedConditionKey == v25)
            {
              mDateTimeFormat = self->mFormatStruct.var0.mDateFormatStruct.mDateTimeFormat;
              [v8 formatStruct];
              v12 = mDateTimeFormat == v24;
              goto LABEL_49;
            }

LABEL_25:
            LOBYTE(v6) = 0;
            return v6;
          }
        }
      }
    }

    [v8 formatStruct];
    mFormatType = self->mFormatStruct.mFormatType;
    if (mFormatType != *v20)
    {
      goto LABEL_25;
    }

    mMinimum = self->mFormatStruct.var0.mControlFormatStruct.mMinimum;
    v15 = self->mFormatStruct.var0.mDateFormatStruct.mDateTimeFormat;
    LOBYTE(v6) = 1;
    if (mFormatType <= 263)
    {
      if (mFormatType > 260)
      {
        if (mFormatType != 261)
        {
          if (mFormatType != 262)
          {
            return v6;
          }

          v12 = v20[8] == LOBYTE(mMinimum);
          goto LABEL_49;
        }

        LODWORD(v6) = [(NSString *)self->mFormatStruct.var0.mDateFormatStruct.mDateTimeFormat isEqualToString:*&v20[16]];
        if (!v6)
        {
          return v6;
        }

        if ((v20[8] ^ LOBYTE(mMinimum)))
        {
          goto LABEL_25;
        }

        v12 = ((v20[8] ^ LOBYTE(mMinimum)) & 2) == 0;
LABEL_49:
        LOBYTE(v6) = v12;
        return v6;
      }

      if ((mFormatType - 256) < 4 && ((*&v20[8] ^ LODWORD(mMinimum)) & 0x1FFFFFFF) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v17 = self->mFormatStruct.var0.mControlFormatStruct.mIncrement;
      if (mFormatType > 268)
      {
        if ((mFormatType - 270) < 3)
        {
          *&v32 = self->mFormatStruct.var0.mCustomFormatStruct.mCustomFormatKey;
          *(&v32 + 1) = v15;
          mIncrement = v17;
          v30 = *&v20[8];
          v31 = v21;
          LOBYTE(v6) = TSUFormatStructCustomEqualKeys(&v32, &v30);
          return v6;
        }

        if (mFormatType != 269)
        {
          return v6;
        }

        if (*&v20[8] != LOWORD(mMinimum))
        {
          goto LABEL_25;
        }

        v18 = v20[10] ^ HIWORD(LODWORD(mMinimum));
LABEL_41:
        v12 = (v18 & 1) == 0;
        goto LABEL_49;
      }

      if ((mFormatType - 264) >= 2)
      {
        if (mFormatType == 266)
        {
          if (*&v20[8] == *&mMinimum)
          {
            if (HIDWORD(*&mMinimum))
            {
              return v6;
            }

            v12 = *&v20[16] == v15;
            goto LABEL_49;
          }

          goto LABEL_25;
        }

        if (mFormatType != 268)
        {
          return v6;
        }

        if (*&v20[20] != HIDWORD(v15))
        {
          goto LABEL_25;
        }

        LOBYTE(v6) = 0;
        if (*&v20[12] != __PAIR64__(v15, HIDWORD(mMinimum)))
        {
          return v6;
        }

        LOBYTE(v18) = v20[8] ^ LOBYTE(mMinimum);
        goto LABEL_41;
      }

      LOBYTE(v6) = 0;
      if (mMinimum == *&v20[8] && *&v15 == *&v20[16] && v17 == v21 && self->mFormatStruct.var0.mControlFormatStruct.mDisplayFormatType == v22)
      {
        if (((v23 ^ *(&self->mFormatStruct.var0.mMultipleChoiceListFormatStruct + 28)) & 3) != 0)
        {
          goto LABEL_25;
        }

        v12 = ((v23 ^ *(&self->mFormatStruct.var0.mMultipleChoiceListFormatStruct + 28)) & 0xC) == 0;
        goto LABEL_49;
      }
    }
  }

  return v6;
}

@end