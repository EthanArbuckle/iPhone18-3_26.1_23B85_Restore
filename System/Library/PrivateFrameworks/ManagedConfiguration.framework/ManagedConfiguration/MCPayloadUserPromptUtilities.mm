@interface MCPayloadUserPromptUtilities
+ (id)prioritizeUserInput:(id)input key:(id)key overField:(id)field;
+ (id)promptDictionaryForKey:(id)key title:(id)title description:(id)description retypeDescription:(id)retypeDescription finePrint:(id)print defaultValue:(id)value placeholderValue:(id)placeholderValue minimumLength:(unint64_t)self0 fieldType:(int)self1 flags:(int)self2;
@end

@implementation MCPayloadUserPromptUtilities

+ (id)promptDictionaryForKey:(id)key title:(id)title description:(id)description retypeDescription:(id)retypeDescription finePrint:(id)print defaultValue:(id)value placeholderValue:(id)placeholderValue minimumLength:(unint64_t)self0 fieldType:(int)self1 flags:(int)self2
{
  keyCopy = key;
  titleCopy = title;
  descriptionCopy = description;
  retypeDescriptionCopy = retypeDescription;
  printCopy = print;
  valueCopy = value;
  placeholderValueCopy = placeholderValue;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([keyCopy length])
  {
    [dictionary setObject:keyCopy forKey:@"UUID"];
  }

  if ([titleCopy length])
  {
    [dictionary setObject:titleCopy forKey:@"title"];
  }

  if ([descriptionCopy length])
  {
    [dictionary setObject:descriptionCopy forKey:@"description"];
  }

  if ([retypeDescriptionCopy length])
  {
    [dictionary setObject:retypeDescriptionCopy forKey:@"retryDescription"];
  }

  if ([printCopy length])
  {
    [dictionary setObject:printCopy forKey:@"finePrint"];
  }

  if ([valueCopy length])
  {
    [dictionary setObject:valueCopy forKey:@"defaultValue"];
  }

  if ([placeholderValueCopy length])
  {
    [dictionary setObject:placeholderValueCopy forKey:@"placeholderValue"];
  }

  if (length)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:length];
    [dictionary setObject:v25 forKey:@"minimumLength"];
  }

  v26 = [MEMORY[0x1E696AD98] numberWithInt:type];
  [dictionary setObject:v26 forKey:@"fieldType"];

  v27 = [MEMORY[0x1E696AD98] numberWithInt:flags];
  [dictionary setObject:v27 forKey:@"flags"];

  return dictionary;
}

+ (id)prioritizeUserInput:(id)input key:(id)key overField:(id)field
{
  v28 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  keyCopy = key;
  fieldCopy = field;
  v10 = fieldCopy;
  if (inputCopy)
  {
    v22 = fieldCopy;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = inputCopy;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
LABEL_4:
      v15 = 0;
      while (1)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * v15);
        v17 = [v16 objectForKey:@"UUID"];
        v18 = [v17 isEqualToString:keyCopy];

        if (v18)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v19 = [v16 objectForKey:@"response"];

      v10 = v22;
      if (v19)
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_10:

      v10 = v22;
    }
  }

  v19 = v10;
LABEL_13:

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

@end