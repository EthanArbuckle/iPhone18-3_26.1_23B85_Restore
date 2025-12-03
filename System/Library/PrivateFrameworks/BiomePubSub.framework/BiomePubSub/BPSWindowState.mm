@interface BPSWindowState
- (BOOL)isEqual:(id)equal;
- (BPSWindowState)initWithCoder:(id)coder;
- (BPSWindowState)initWithIdentifier:(id)identifier aggregate:(id)aggregate completed:(BOOL)completed;
- (id)metadata;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BPSWindowState

- (BPSWindowState)initWithIdentifier:(id)identifier aggregate:(id)aggregate completed:(BOOL)completed
{
  identifierCopy = identifier;
  aggregateCopy = aggregate;
  v14.receiver = self;
  v14.super_class = BPSWindowState;
  v11 = [(BPSWindowState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, identifier);
    objc_storeStrong(&v12->_aggregate, aggregate);
    v12->_completed = completed;
  }

  return v12;
}

- (id)metadata
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"Override method %@ in subclass %@", v4, objc_opt_class()}];

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [equalCopy identifier];
    identifier2 = [(BPSWindowState *)self identifier];
    v7 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  identifier = [(BPSWindowState *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(BPSWindowState *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  aggregate = [(BPSWindowState *)self aggregate];
  [coderCopy encodeObject:aggregate forKey:@"aggregate"];

  [coderCopy encodeBool:-[BPSWindowState completed](self forKey:{"completed"), @"completed"}];
}

- (BPSWindowState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (v5)
  {
    bm_allowedClassesForSecureCodingBMBookmark = [MEMORY[0x1E696AB10] bm_allowedClassesForSecureCodingBMBookmark];
    v7 = [coderCopy decodeObjectOfClasses:bm_allowedClassesForSecureCodingBMBookmark forKey:@"aggregate"];

    if (v7)
    {
      self = -[BPSWindowState initWithIdentifier:aggregate:completed:](self, "initWithIdentifier:aggregate:completed:", v5, v7, [coderCopy decodeBoolForKey:@"completed"]);
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end