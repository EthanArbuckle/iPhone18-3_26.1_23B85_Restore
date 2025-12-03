@interface CPLPrequeliteRemappedRecord
- (id)description;
@end

@implementation CPLPrequeliteRemappedRecord

- (id)description
{
  v3 = [NSString alloc];
  scopedIdentifier = self->_scopedIdentifier;
  identifier = [(CPLScopedIdentifier *)self->_realScopedIdentifier identifier];
  v6 = [v3 initWithFormat:@"[%@ -> %@]", scopedIdentifier, identifier];

  return v6;
}

@end