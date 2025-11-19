@interface PDBarcodeServiceBarcodeEventTask
- (BOOL)isValid;
- (PDBarcodeServiceBarcodeEventTask)initWithCoder:(id)a3;
- (id)bodyDictionary;
- (id)endpointComponents;
- (void)encodeWithCoder:(id)a3;
- (void)handleError:(id)a3;
- (void)handleResponse:(id)a3 data:(id)a4;
@end

@implementation PDBarcodeServiceBarcodeEventTask

- (PDBarcodeServiceBarcodeEventTask)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PDBarcodeServiceBarcodeEventTask;
  v5 = [(PDBarcodeServiceConnectionTask *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"barcodeIdentifier"];
    barcodeIdentifier = v5->_barcodeIdentifier;
    v5->_barcodeIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"event"];
    event = v5->_event;
    v5->_event = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v5->_signature;
    v5->_signature = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PDBarcodeServiceBarcodeEventTask;
  v4 = a3;
  [(PDBarcodeServiceConnectionTask *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_barcodeIdentifier forKey:{@"barcodeIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_event forKey:@"event"];
  [v4 encodeObject:self->_signature forKey:@"signature"];
}

- (BOOL)isValid
{
  v5.receiver = self;
  v5.super_class = PDBarcodeServiceBarcodeEventTask;
  v3 = [(PDBarcodeServiceConnectionTask *)&v5 isValid];
  if (v3)
  {
    LOBYTE(v3) = self->_barcodeIdentifier && self->_event && self->_signature != 0;
  }

  return v3;
}

- (id)endpointComponents
{
  v4[0] = @"v1";
  v4[1] = @"barcode";
  v4[2] = self->_barcodeIdentifier;
  v4[3] = @"event";
  v2 = [NSArray arrayWithObjects:v4 count:4];

  return v2;
}

- (id)bodyDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(NSData *)self->_event base64EncodedStringWithOptions:0];
  [v3 setObject:v4 forKey:@"event"];

  v5 = [(NSData *)self->_signature base64EncodedStringWithOptions:0];
  [v3 setObject:v5 forKey:@"signature"];

  v6 = [v3 copy];

  return v6;
}

- (void)handleResponse:(id)a3 data:(id)a4
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = PDBarcodeServiceBarcodeEventTask;
  v7 = a3;
  [(PDBarcodeServiceConnectionTask *)&v17 handleResponse:v7 data:v6];
  v8 = [v7 statusCode];

  if (v8 == 403)
  {
    v11 = [[PDBarcodeServiceConnectionForbiddenErrorResponse alloc] initWithData:v6];
    if ([(PDBarcodeServiceConnectionForbiddenErrorResponse *)v11 errorCode]== 40601)
    {
      v16 = PDTaskError(40601, self, 0, @"Invalid Certificate", v12, v13, v14, v15, v17.receiver);
      [(PDNetworkTask *)self reportError:v16];
    }

    [(PDNetworkTask *)self fail:v17.receiver];
  }

  else if (v8 == 200)
  {
    v9 = [PDBarcodeServiceBarcodeEventResponse alloc];
    v10 = [(PDBarcodeServiceBarcodeEventResponse *)v9 initWithData:v6, v17.receiver, v17.super_class];
    [(PDNetworkTask *)self deliverResult:v10];

    [(PDNetworkTask *)self succeed];
  }

  else
  {
    [(PDNetworkTask *)self fail:v17.receiver];
  }
}

- (void)handleError:(id)a3
{
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = self;
    v8 = 2112;
    v9 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error: %@ (%@)", &v6, 0x16u);
  }

  [(PDNetworkTask *)self fail];
}

@end