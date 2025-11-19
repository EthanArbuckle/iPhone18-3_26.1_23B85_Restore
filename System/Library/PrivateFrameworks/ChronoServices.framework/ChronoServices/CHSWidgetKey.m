@interface CHSWidgetKey
- (BOOL)isEqual:(id)a3;
- (CHSWidgetKey)initWithCoder:(id)a3;
- (CHSWidgetKey)initWithWidget:(id)a3 metrics:(id)a4 hostIdentifier:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSWidgetKey

- (CHSWidgetKey)initWithWidget:(id)a3 metrics:(id)a4 hostIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = CHSWidgetKey;
  v11 = [(CHSWidgetKey *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    widget = v11->_widget;
    v11->_widget = v12;

    v14 = [v9 copy];
    metrics = v11->_metrics;
    v11->_metrics = v14;

    v16 = [v10 copy];
    hostIdentifier = v11->_hostIdentifier;
    v11->_hostIdentifier = v16;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  widget = self->_widget;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __24__CHSWidgetKey_isEqual___block_invoke;
  v20[3] = &unk_1E7453078;
  v7 = v4;
  v21 = v7;
  v8 = [v5 appendObject:widget counterpart:v20];
  metrics = self->_metrics;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __24__CHSWidgetKey_isEqual___block_invoke_2;
  v18[3] = &unk_1E7453078;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendObject:metrics counterpart:v18];
  hostIdentifier = self->_hostIdentifier;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __24__CHSWidgetKey_isEqual___block_invoke_3;
  v16[3] = &unk_1E7452FD8;
  v13 = v10;
  v17 = v13;
  v14 = [v5 appendString:hostIdentifier counterpart:v16];
  LOBYTE(v10) = [v5 isEqual];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_widget forKey:@"_w"];
  [v4 encodeObject:self->_metrics forKey:@"_m"];
  [v4 encodeObject:self->_hostIdentifier forKey:@"_hi"];
}

- (CHSWidgetKey)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"_w"];

  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"_m"];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_hi"];
  v10 = 0;
  if (v6 && v8)
  {
    self = [(CHSWidgetKey *)self initWithWidget:v6 metrics:v8 hostIdentifier:v9];
    v10 = self;
  }

  return v10;
}

@end