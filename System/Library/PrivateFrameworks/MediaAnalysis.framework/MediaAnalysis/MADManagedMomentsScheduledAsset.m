@interface MADManagedMomentsScheduledAsset
- (id)description;
@end

@implementation MADManagedMomentsScheduledAsset

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  v6 = [objc_opt_class() localIdentifierColumnName];
  v7 = [(MADManagedMomentsScheduledAsset *)self localIdentifier];
  [v3 appendFormat:@"%@: %@, ", v6, v7];

  v8 = [objc_opt_class() taskIDColumnName];
  v9 = VCPTaskIDDescription([(MADManagedMomentsScheduledAsset *)self taskID]);
  [v3 appendFormat:@"%@: %@, ", v8, v9];

  v10 = [objc_opt_class() requestDateColumnName];
  v11 = [(MADManagedMomentsScheduledAsset *)self requestDate];
  [v3 appendFormat:@"%@: %@>", v10, v11];

  return v3;
}

@end