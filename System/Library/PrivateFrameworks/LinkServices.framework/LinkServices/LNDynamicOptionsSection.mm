@interface LNDynamicOptionsSection
- (LNDynamicOptionsSection)initWithCoder:(id)coder;
- (LNDynamicOptionsSection)initWithOptions:(id)options title:(id)title;
- (LNDynamicOptionsSection)initWithOptions:(id)options title:(id)title subtitle:(id)subtitle image:(id)image;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNDynamicOptionsSection

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  title = [(LNDynamicOptionsSection *)self title];
  options = [(LNDynamicOptionsSection *)self options];
  v8 = [v3 stringWithFormat:@"<%@: %p titleKey=%@, optionsCount=%lu>", v5, self, title, objc_msgSend(options, "count")];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  options = [(LNDynamicOptionsSection *)self options];
  [coderCopy encodeObject:options forKey:@"options"];

  title = [(LNDynamicOptionsSection *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  subtitle = [(LNDynamicOptionsSection *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"subtitle"];

  image = [(LNDynamicOptionsSection *)self image];
  [coderCopy encodeObject:image forKey:@"image"];
}

- (LNDynamicOptionsSection)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"options"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];

  v12 = [(LNDynamicOptionsSection *)self initWithOptions:v8 title:v9 subtitle:v10 image:v11];
  return v12;
}

- (LNDynamicOptionsSection)initWithOptions:(id)options title:(id)title subtitle:(id)subtitle image:(id)image
{
  optionsCopy = options;
  titleCopy = title;
  subtitleCopy = subtitle;
  imageCopy = image;
  if (!optionsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNDynamicOptionsResult.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"options"}];
  }

  v27.receiver = self;
  v27.super_class = LNDynamicOptionsSection;
  v15 = [(LNDynamicOptionsSection *)&v27 init];
  if (v15)
  {
    v16 = [optionsCopy copy];
    options = v15->_options;
    v15->_options = v16;

    v18 = [titleCopy copy];
    title = v15->_title;
    v15->_title = v18;

    v20 = [subtitleCopy copy];
    subtitle = v15->_subtitle;
    v15->_subtitle = v20;

    v22 = [imageCopy copy];
    image = v15->_image;
    v15->_image = v22;

    v24 = v15;
  }

  return v15;
}

- (LNDynamicOptionsSection)initWithOptions:(id)options title:(id)title
{
  optionsCopy = options;
  titleCopy = title;
  if (!optionsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNDynamicOptionsResult.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"options"}];
  }

  v9 = [(LNDynamicOptionsSection *)self initWithOptions:optionsCopy title:titleCopy subtitle:0 image:0];

  return v9;
}

@end