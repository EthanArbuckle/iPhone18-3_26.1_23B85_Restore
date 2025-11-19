@interface _ICProactiveTrigger
+ (BOOL)isEquivalentDictionary:(id)a3 second:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToProactiveTrigger:(id)a3;
- (_ICProactiveTrigger)initWithCoder:(id)a3;
- (_ICProactiveTrigger)initWithContext:(id)a3 inputContextHistory:(id)a4 contentType:(id)a5;
- (_ICProactiveTrigger)initWithSource:(unsigned __int8)a3 attributes:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _ICProactiveTrigger

- (_ICProactiveTrigger)initWithSource:(unsigned __int8)a3 attributes:(id)a4
{
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _ICProactiveTrigger;
  v8 = [(_ICProactiveTrigger *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_triggerSourceType = a3;
    objc_storeStrong(&v8->_attributedString, a4);
    v10 = [v7 objectForKey:@"textContentTypeTag"];

    if (v10)
    {
      v11 = [v7 objectForKey:@"textContentTypeTag"];
      contentType = v9->_contentType;
      v9->_contentType = v11;
    }
  }

  return v9;
}

- (_ICProactiveTrigger)initWithContext:(id)a3 inputContextHistory:(id)a4 contentType:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _ICProactiveTrigger;
  v12 = [(_ICProactiveTrigger *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_triggerSourceType = 3;
    objc_storeStrong(&v12->_contentType, a5);
    objc_storeStrong(&v13->_context, a3);
    objc_storeStrong(&v13->_inputContextHistory, a4);
  }

  return v13;
}

- (unint64_t)hash
{
  triggerSourceType = self->_triggerSourceType;
  v4 = [(NSDictionary *)self->_attributedString count]- triggerSourceType + 32 * triggerSourceType;
  v5 = [(NSString *)self->_context hash]- v4 + 32 * v4;
  v6 = [(TIInputContextHistory *)self->_inputContextHistory hash]- v5 + 32 * v5;
  return [(NSString *)self->_contentType hash]- v6 + 32 * v6;
}

- (_ICProactiveTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _ICProactiveTrigger;
  v5 = [(_ICProactiveTrigger *)&v21 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"attributedString"];
    v10 = [v9 copy];
    attributedString = v5->_attributedString;
    v5->_attributedString = v10;

    v5->_triggerSourceType = [v4 decodeInt64ForKey:@"triggerSourceType"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    context = v5->_context;
    v5->_context = v12;

    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v14 = getTIInputContextHistoryClass_softClass;
    v26 = getTIInputContextHistoryClass_softClass;
    if (!getTIInputContextHistoryClass_softClass)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __getTIInputContextHistoryClass_block_invoke;
      v22[3] = &unk_2797AD9B8;
      v22[4] = &v23;
      __getTIInputContextHistoryClass_block_invoke(v22);
      v14 = v24[3];
    }

    v15 = v14;
    _Block_object_dispose(&v23, 8);
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputContextHistory"];
    inputContextHistory = v5->_inputContextHistory;
    v5->_inputContextHistory = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
    contentType = v5->_contentType;
    v5->_contentType = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  attributedString = self->_attributedString;
  v5 = a3;
  [v5 encodeObject:attributedString forKey:@"attributedString"];
  [v5 encodeInt64:self->_triggerSourceType forKey:@"triggerSourceType"];
  [v5 encodeObject:self->_context forKey:@"context"];
  [v5 encodeObject:self->_inputContextHistory forKey:@"inputContextHistory"];
  [v5 encodeObject:self->_contentType forKey:@"contentType"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  if (v5)
  {
    v6 = [(NSDictionary *)self->_attributedString copyWithZone:a3];
    v7 = *(v5 + 3);
    *(v5 + 3) = v6;

    *(v5 + 8) = self->_triggerSourceType;
    objc_storeStrong(v5 + 4, self->_context);
    objc_storeStrong(v5 + 5, self->_inputContextHistory);
    objc_storeStrong(v5 + 6, self->_contentType);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_ICProactiveTrigger *)self isEqualToProactiveTrigger:v5];
  }

  return v6;
}

+ (BOOL)isEquivalentDictionary:(id)a3 second:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7 == [v6 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v8 objectForKey:{v13, v19}];
          v15 = [v6 objectForKey:v13];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ![_ICProactiveTrigger isEquivalentDictionary:v14 second:v15])
            {
              goto LABEL_18;
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![v14 isEqualToString:v15])
            {
LABEL_18:

              v16 = 0;
              goto LABEL_20;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        v16 = 1;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v16 = 1;
    }

LABEL_20:
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)isEqualToProactiveTrigger:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = [v4 triggerSourceType];
  if (v6 != [(_ICProactiveTrigger *)self triggerSourceType])
  {
    goto LABEL_10;
  }

  v7 = [(_ICProactiveTrigger *)self attributedString];
  v8 = [v5 attributedString];
  v9 = [_ICProactiveTrigger isEquivalentDictionary:v7 second:v8];

  if (!v9)
  {
    goto LABEL_10;
  }

  if (self->_context != *(v5 + 4))
  {
    v10 = [(_ICProactiveTrigger *)self context];
    v11 = [v5 context];
    v12 = [v10 isEqualToString:v11];

    if (!v12)
    {
      goto LABEL_10;
    }
  }

  if (self->_inputContextHistory == *(v5 + 5) || (-[_ICProactiveTrigger inputContextHistory](self, "inputContextHistory"), v13 = objc_claimAutoreleasedReturnValue(), [v5 inputContextHistory], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqual:", v14), v14, v13, v15))
  {
    if (self->_contentType == *(v5 + 6))
    {
      v18 = 1;
    }

    else
    {
      v16 = [(_ICProactiveTrigger *)self contentType];
      v17 = [v5 contentType];
      v18 = [v16 isEqualToString:v17];
    }
  }

  else
  {
LABEL_10:
    v18 = 0;
  }

  return v18;
}

@end