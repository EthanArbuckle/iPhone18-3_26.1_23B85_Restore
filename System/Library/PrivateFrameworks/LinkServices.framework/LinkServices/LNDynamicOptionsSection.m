@interface LNDynamicOptionsSection
- (LNDynamicOptionsSection)initWithCoder:(id)a3;
- (LNDynamicOptionsSection)initWithOptions:(id)a3 title:(id)a4;
- (LNDynamicOptionsSection)initWithOptions:(id)a3 title:(id)a4 subtitle:(id)a5 image:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNDynamicOptionsSection

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNDynamicOptionsSection *)self title];
  v7 = [(LNDynamicOptionsSection *)self options];
  v8 = [v3 stringWithFormat:@"<%@: %p titleKey=%@, optionsCount=%lu>", v5, self, v6, objc_msgSend(v7, "count")];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNDynamicOptionsSection *)self options];
  [v4 encodeObject:v5 forKey:@"options"];

  v6 = [(LNDynamicOptionsSection *)self title];
  [v4 encodeObject:v6 forKey:@"title"];

  v7 = [(LNDynamicOptionsSection *)self subtitle];
  [v4 encodeObject:v7 forKey:@"subtitle"];

  v8 = [(LNDynamicOptionsSection *)self image];
  [v4 encodeObject:v8 forKey:@"image"];
}

- (LNDynamicOptionsSection)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"options"];

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
  v11 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"image"];

  v12 = [(LNDynamicOptionsSection *)self initWithOptions:v8 title:v9 subtitle:v10 image:v11];
  return v12;
}

- (LNDynamicOptionsSection)initWithOptions:(id)a3 title:(id)a4 subtitle:(id)a5 image:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"LNDynamicOptionsResult.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"options"}];
  }

  v27.receiver = self;
  v27.super_class = LNDynamicOptionsSection;
  v15 = [(LNDynamicOptionsSection *)&v27 init];
  if (v15)
  {
    v16 = [v11 copy];
    options = v15->_options;
    v15->_options = v16;

    v18 = [v12 copy];
    title = v15->_title;
    v15->_title = v18;

    v20 = [v13 copy];
    subtitle = v15->_subtitle;
    v15->_subtitle = v20;

    v22 = [v14 copy];
    image = v15->_image;
    v15->_image = v22;

    v24 = v15;
  }

  return v15;
}

- (LNDynamicOptionsSection)initWithOptions:(id)a3 title:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"LNDynamicOptionsResult.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"options"}];
  }

  v9 = [(LNDynamicOptionsSection *)self initWithOptions:v7 title:v8 subtitle:0 image:0];

  return v9;
}

@end