@interface PKGroupsControllerSnapshotFetchOptions
- (PKGroupsControllerSnapshotFetchOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKGroupsControllerSnapshotFetchOptions

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[PKGroupsControllerSnapshotFetchOptions allocWithZone:?]];
  *(result + 8) = self->_limitResults;
  *(result + 9) = self->_includeAnnotations;
  *(result + 2) = self->_allowedPassType;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  limitResults = self->_limitResults;
  coderCopy = coder;
  [coderCopy encodeBool:limitResults forKey:@"limitResults"];
  [coderCopy encodeBool:self->_includeAnnotations forKey:@"includeAnnotations"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_allowedPassType];
  [coderCopy encodeObject:v6 forKey:@"alowedPassType"];
}

- (PKGroupsControllerSnapshotFetchOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PKGroupsControllerSnapshotFetchOptions;
  v5 = [(PKGroupsControllerSnapshotFetchOptions *)&v8 init];
  if (v5)
  {
    v5->_limitResults = [coderCopy decodeBoolForKey:@"limitResults"];
    v5->_includeAnnotations = [coderCopy decodeBoolForKey:@"includeAnnotations"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alowedPassType"];
    v5->_allowedPassType = [v6 unsignedIntegerValue];
  }

  return v5;
}

@end