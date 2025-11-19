@interface MUContactLabeledValue
- (MUContactLabeledValue)initWithContactLabeledValue:(id)a3 type:(int64_t)a4;
- (NSString)titleString;
- (NSString)valueString;
- (id)glyphName;
- (int)analyticsTarget;
@end

@implementation MUContactLabeledValue

- (int)analyticsTarget
{
  type = self->_type;
  if (type > 3)
  {
    return 0;
  }

  else
  {
    return dword_1C5879FE0[type];
  }
}

- (MUContactLabeledValue)initWithContactLabeledValue:(id)a3 type:(int64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = MUContactLabeledValue;
  v8 = [(MUContactLabeledValue *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a4;
    objc_storeStrong(&v8->_labeledValue, a3);
    v10 = [(MUContactLabeledValue *)v9 glyphName];
    symbolName = v9->_symbolName;
    v9->_symbolName = v10;
  }

  return v9;
}

- (id)glyphName
{
  v2 = self->_type - 1;
  if (v2 > 2)
  {
    return &stru_1F44CA030;
  }

  else
  {
    return off_1E8219B48[v2];
  }
}

- (NSString)valueString
{
  v3 = [(CNLabeledValue *)self->_labeledValue value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(CNLabeledValue *)self->_labeledValue value];
  v6 = v5;
  if (isKindOfClass)
  {
    v7 = [v5 stringValue];

    v8 = *MEMORY[0x1E695E480];
    v9 = [MEMORY[0x1E69A1CD8] sharedConfiguration];
    v10 = [v9 countryCode];
    v11 = CFPhoneNumberCreate();

    if (v11)
    {
      String = CFPhoneNumberCreateString();
      CFRelease(v11);
    }

    else
    {
      String = &stru_1F44CA030;
    }

    goto LABEL_9;
  }

  objc_opt_class();
  v13 = objc_opt_isKindOfClass();

  if ((v13 & 1) == 0)
  {
    String = &stru_1F44CA030;
    goto LABEL_10;
  }

  if (self->_type == 3)
  {
    v14 = MEMORY[0x1E696AEC0];
    v7 = [(CNLabeledValue *)self->_labeledValue value];
    String = [v14 _mapkit_shortenedURLStringForFullURLString:v7];
LABEL_9:

    goto LABEL_10;
  }

  String = [(CNLabeledValue *)self->_labeledValue value];
LABEL_10:

  return String;
}

- (NSString)titleString
{
  v3 = self->_type - 1;
  if (v3 > 2)
  {
    v4 = &stru_1F44CA030;
  }

  else
  {
    v4 = _MULocalizedStringFromThisBundle(off_1E8219B30[v3]);
  }

  return v4;
}

@end