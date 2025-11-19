@interface CPLPrequeliteRemappedRecord
- (id)description;
@end

@implementation CPLPrequeliteRemappedRecord

- (id)description
{
  v3 = [NSString alloc];
  scopedIdentifier = self->_scopedIdentifier;
  v5 = [(CPLScopedIdentifier *)self->_realScopedIdentifier identifier];
  v6 = [v3 initWithFormat:@"[%@ -> %@]", scopedIdentifier, v5];

  return v6;
}

@end