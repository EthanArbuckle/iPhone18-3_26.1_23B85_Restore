@interface PKGroupsControllerSnapshotFetchOptions
- (PKGroupsControllerSnapshotFetchOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKGroupsControllerSnapshotFetchOptions

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[PKGroupsControllerSnapshotFetchOptions allocWithZone:?]];
  *(result + 8) = self->_limitResults;
  *(result + 9) = self->_includeAnnotations;
  *(result + 2) = self->_allowedPassType;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  limitResults = self->_limitResults;
  v5 = a3;
  [v5 encodeBool:limitResults forKey:@"limitResults"];
  [v5 encodeBool:self->_includeAnnotations forKey:@"includeAnnotations"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_allowedPassType];
  [v5 encodeObject:v6 forKey:@"alowedPassType"];
}

- (PKGroupsControllerSnapshotFetchOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKGroupsControllerSnapshotFetchOptions;
  v5 = [(PKGroupsControllerSnapshotFetchOptions *)&v8 init];
  if (v5)
  {
    v5->_limitResults = [v4 decodeBoolForKey:@"limitResults"];
    v5->_includeAnnotations = [v4 decodeBoolForKey:@"includeAnnotations"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alowedPassType"];
    v5->_allowedPassType = [v6 unsignedIntegerValue];
  }

  return v5;
}

@end