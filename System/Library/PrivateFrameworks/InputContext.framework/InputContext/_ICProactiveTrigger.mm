@interface _ICProactiveTrigger
+ (BOOL)isEquivalentDictionary:(id)dictionary second:(id)second;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToProactiveTrigger:(id)trigger;
- (_ICProactiveTrigger)initWithCoder:(id)coder;
- (_ICProactiveTrigger)initWithContext:(id)context inputContextHistory:(id)history contentType:(id)type;
- (_ICProactiveTrigger)initWithSource:(unsigned __int8)source attributes:(id)attributes;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _ICProactiveTrigger

- (_ICProactiveTrigger)initWithSource:(unsigned __int8)source attributes:(id)attributes
{
  attributesCopy = attributes;
  v14.receiver = self;
  v14.super_class = _ICProactiveTrigger;
  v8 = [(_ICProactiveTrigger *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_triggerSourceType = source;
    objc_storeStrong(&v8->_attributedString, attributes);
    v10 = [attributesCopy objectForKey:@"textContentTypeTag"];

    if (v10)
    {
      v11 = [attributesCopy objectForKey:@"textContentTypeTag"];
      contentType = v9->_contentType;
      v9->_contentType = v11;
    }
  }

  return v9;
}

- (_ICProactiveTrigger)initWithContext:(id)context inputContextHistory:(id)history contentType:(id)type
{
  contextCopy = context;
  historyCopy = history;
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = _ICProactiveTrigger;
  v12 = [(_ICProactiveTrigger *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_triggerSourceType = 3;
    objc_storeStrong(&v12->_contentType, type);
    objc_storeStrong(&v13->_context, context);
    objc_storeStrong(&v13->_inputContextHistory, history);
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

- (_ICProactiveTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = _ICProactiveTrigger;
  v5 = [(_ICProactiveTrigger *)&v21 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"attributedString"];
    v10 = [v9 copy];
    attributedString = v5->_attributedString;
    v5->_attributedString = v10;

    v5->_triggerSourceType = [coderCopy decodeInt64ForKey:@"triggerSourceType"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
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
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputContextHistory"];
    inputContextHistory = v5->_inputContextHistory;
    v5->_inputContextHistory = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
    contentType = v5->_contentType;
    v5->_contentType = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  attributedString = self->_attributedString;
  coderCopy = coder;
  [coderCopy encodeObject:attributedString forKey:@"attributedString"];
  [coderCopy encodeInt64:self->_triggerSourceType forKey:@"triggerSourceType"];
  [coderCopy encodeObject:self->_context forKey:@"context"];
  [coderCopy encodeObject:self->_inputContextHistory forKey:@"inputContextHistory"];
  [coderCopy encodeObject:self->_contentType forKey:@"contentType"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  if (v5)
  {
    v6 = [(NSDictionary *)self->_attributedString copyWithZone:zone];
    v7 = *(v5 + 3);
    *(v5 + 3) = v6;

    *(v5 + 8) = self->_triggerSourceType;
    objc_storeStrong(v5 + 4, self->_context);
    objc_storeStrong(v5 + 5, self->_inputContextHistory);
    objc_storeStrong(v5 + 6, self->_contentType);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_ICProactiveTrigger *)self isEqualToProactiveTrigger:v5];
  }

  return v6;
}

+ (BOOL)isEquivalentDictionary:(id)dictionary second:(id)second
{
  v24 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  secondCopy = second;
  v7 = [dictionaryCopy count];
  if (v7 == [secondCopy count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = dictionaryCopy;
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
          v15 = [secondCopy objectForKey:v13];
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

- (BOOL)isEqualToProactiveTrigger:(id)trigger
{
  triggerCopy = trigger;
  v5 = triggerCopy;
  if (!triggerCopy)
  {
    goto LABEL_10;
  }

  triggerSourceType = [triggerCopy triggerSourceType];
  if (triggerSourceType != [(_ICProactiveTrigger *)self triggerSourceType])
  {
    goto LABEL_10;
  }

  attributedString = [(_ICProactiveTrigger *)self attributedString];
  attributedString2 = [v5 attributedString];
  v9 = [_ICProactiveTrigger isEquivalentDictionary:attributedString second:attributedString2];

  if (!v9)
  {
    goto LABEL_10;
  }

  if (self->_context != *(v5 + 4))
  {
    context = [(_ICProactiveTrigger *)self context];
    context2 = [v5 context];
    v12 = [context isEqualToString:context2];

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
      contentType = [(_ICProactiveTrigger *)self contentType];
      contentType2 = [v5 contentType];
      v18 = [contentType isEqualToString:contentType2];
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