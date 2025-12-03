@interface MADManagedMomentsScheduledAsset
- (id)description;
@end

@implementation MADManagedMomentsScheduledAsset

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  localIdentifierColumnName = [objc_opt_class() localIdentifierColumnName];
  localIdentifier = [(MADManagedMomentsScheduledAsset *)self localIdentifier];
  [string appendFormat:@"%@: %@, ", localIdentifierColumnName, localIdentifier];

  taskIDColumnName = [objc_opt_class() taskIDColumnName];
  v9 = VCPTaskIDDescription([(MADManagedMomentsScheduledAsset *)self taskID]);
  [string appendFormat:@"%@: %@, ", taskIDColumnName, v9];

  requestDateColumnName = [objc_opt_class() requestDateColumnName];
  requestDate = [(MADManagedMomentsScheduledAsset *)self requestDate];
  [string appendFormat:@"%@: %@>", requestDateColumnName, requestDate];

  return string;
}

@end