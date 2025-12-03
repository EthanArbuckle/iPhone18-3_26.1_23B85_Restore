@interface PKCloudRecordPendingRequest
- (PKCloudRecordPendingRequest)initWithCoder:(id)coder;
- (id)_descriptionWithIncludeItem:(BOOL)item;
- (id)description;
- (id)descriptionWithItem:(BOOL)item;
- (int64_t)compare:(id)compare;
- (void)applyCloudRecordObject:(id)object;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCloudRecordPendingRequest

- (PKCloudRecordPendingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKCloudRecordPendingRequest;
  v5 = [(PKCloudRecordObject *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pendingRequest"];
    pendingRequest = v5->_pendingRequest;
    v5->_pendingRequest = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKCloudRecordPendingRequest;
  coderCopy = coder;
  [(PKCloudRecordObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_pendingRequest forKey:{@"pendingRequest", v5.receiver, v5.super_class}];
}

- (int64_t)compare:(id)compare
{
  pendingRequest = self->_pendingRequest;
  compareCopy = compare;
  requestToken = [(PKPeerPaymentPendingRequest *)pendingRequest requestToken];
  pendingRequest = [compareCopy pendingRequest];

  requestToken2 = [pendingRequest requestToken];
  v8 = [requestToken compare:requestToken2];

  return v8;
}

- (id)descriptionWithItem:(BOOL)item
{
  itemCopy = item;
  v5 = [(PKCloudRecordPendingRequest *)self _descriptionWithIncludeItem:?];
  v8.receiver = self;
  v8.super_class = PKCloudRecordPendingRequest;
  v6 = [(PKCloudRecordObject *)&v8 descriptionWithItem:itemCopy];
  [v5 appendFormat:@"\n%@", v6];

  return v5;
}

- (id)description
{
  v3 = [(PKCloudRecordPendingRequest *)self _descriptionWithIncludeItem:0];
  v6.receiver = self;
  v6.super_class = PKCloudRecordPendingRequest;
  v4 = [(PKCloudRecordObject *)&v6 description];
  [v3 appendFormat:@"\n%@", v4];

  return v3;
}

- (id)_descriptionWithIncludeItem:(BOOL)item
{
  itemCopy = item;
  string = [MEMORY[0x1E696AD60] string];
  v6 = string;
  if (self->_pendingRequest)
  {
    if (itemCopy)
    {
      [string appendFormat:@"pendingRequest: %@\n", self->_pendingRequest];
    }
  }

  else
  {
    [string appendFormat:@"No associated pendingRequest in database\n", v8];
  }

  return v6;
}

- (void)applyCloudRecordObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10.receiver = self;
    v10.super_class = PKCloudRecordPendingRequest;
    [(PKCloudRecordObject *)&v10 applyCloudRecordObject:objectCopy];
    v5 = objectCopy;
    v6 = v5;
    if (!self->_pendingRequest)
    {
      pendingRequest = [v5 pendingRequest];

      if (pendingRequest)
      {
        pendingRequest2 = [v6 pendingRequest];
        pendingRequest = self->_pendingRequest;
        self->_pendingRequest = pendingRequest2;
      }
    }
  }
}

@end