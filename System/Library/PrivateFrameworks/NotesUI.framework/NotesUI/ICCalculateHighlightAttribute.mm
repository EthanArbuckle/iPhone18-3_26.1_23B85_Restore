@interface ICCalculateHighlightAttribute
- (BOOL)isEqual:(id)equal;
- (ICCalculateHighlightAttribute)init;
- (NSArray)suggestions;
- (NSString)tooltip;
- (UIColor)color;
- (UIColor)underlineColor;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)underlineStyle;
- (unint64_t)hash;
@end

@implementation ICCalculateHighlightAttribute

- (ICCalculateHighlightAttribute)init
{
  v7.receiver = self;
  v7.super_class = ICCalculateHighlightAttribute;
  v2 = [(ICCalculateHighlightAttribute *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_type = 0;
    array = [MEMORY[0x1E695DEC8] array];
    errors = v3->_errors;
    v3->_errors = array;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  type = [(ICCalculateHighlightAttribute *)self type];
  v7 = @"None";
  if (type == 1)
  {
    v7 = @"Variable";
  }

  if (type == 2)
  {
    v7 = @"Result";
  }

  v8 = v7;
  errors = [(ICCalculateHighlightAttribute *)self errors];
  v10 = [v3 stringWithFormat:@"<%@: %p, type: %@, errors: %@>", v5, self, v8, errors];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = ICDynamicCast();

  type = [v5 type];
  if (type == [(ICCalculateHighlightAttribute *)self type])
  {
    errors = [v5 errors];
    errors2 = [(ICCalculateHighlightAttribute *)self errors];
    v9 = [errors isEqual:errors2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ICCalculateHighlightAttribute type](self, "type")}];
  v4 = [v3 hash];
  errors = [(ICCalculateHighlightAttribute *)self errors];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v7 hash];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = errors;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v8 = ICHashWithObject(*(*(&v23 + 1) + 8 * i)) - v8 + 32 * v8;
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v21 = ICHashWithHashKeys(v4, v14, v15, v16, v17, v18, v19, v20, v8);
  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ICCalculateHighlightAttribute allocWithZone:?]];
  [(ICCalculateHighlightAttribute *)v4 setType:[(ICCalculateHighlightAttribute *)self type]];
  errors = [(ICCalculateHighlightAttribute *)self errors];
  v6 = [errors copy];
  [(ICCalculateHighlightAttribute *)v4 setErrors:v6];

  return v4;
}

- (UIColor)color
{
  if ([(ICCalculateHighlightAttribute *)self type]== 1)
  {
    iCControlAccentColor = [MEMORY[0x1E69DC888] ICControlAccentColor];
  }

  else
  {
    iCControlAccentColor = 0;
  }

  return iCControlAccentColor;
}

- (int64_t)underlineStyle
{
  if (ICInternalSettingsIsMathDebugHighlightingEnabled())
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (UIColor)underlineColor
{
  if (ICInternalSettingsIsMathDebugHighlightingEnabled())
  {
    errors = [(ICCalculateHighlightAttribute *)self errors];
    if ([errors count])
    {
      [MEMORY[0x1E69DC888] systemRedColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemGreenColor];
    }
    v4 = ;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)tooltip
{
  errors = [(ICCalculateHighlightAttribute *)self errors];
  v4 = [errors count];

  if (v4)
  {
    errors2 = [(ICCalculateHighlightAttribute *)self errors];
    v6 = [errors2 ic_map:&__block_literal_global_69];
    v7 = [v6 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)suggestions
{
  errors = [(ICCalculateHighlightAttribute *)self errors];
  v3 = [errors ic_flatMap:&__block_literal_global_29_0];

  return v3;
}

void *__44__ICCalculateHighlightAttribute_suggestions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = [v2 userInfo];

  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6992208]];
  v5 = ICDynamicCast();
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;

  return v7;
}

@end