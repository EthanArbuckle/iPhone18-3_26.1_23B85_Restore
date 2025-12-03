@interface PDBarcodeServiceBarcodeEventTask
- (BOOL)isValid;
- (PDBarcodeServiceBarcodeEventTask)initWithCoder:(id)coder;
- (id)bodyDictionary;
- (id)endpointComponents;
- (void)encodeWithCoder:(id)coder;
- (void)handleError:(id)error;
- (void)handleResponse:(id)response data:(id)data;
@end

@implementation PDBarcodeServiceBarcodeEventTask

- (PDBarcodeServiceBarcodeEventTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PDBarcodeServiceBarcodeEventTask;
  v5 = [(PDBarcodeServiceConnectionTask *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"barcodeIdentifier"];
    barcodeIdentifier = v5->_barcodeIdentifier;
    v5->_barcodeIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"event"];
    event = v5->_event;
    v5->_event = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v5->_signature;
    v5->_signature = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PDBarcodeServiceBarcodeEventTask;
  coderCopy = coder;
  [(PDBarcodeServiceConnectionTask *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_barcodeIdentifier forKey:{@"barcodeIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_event forKey:@"event"];
  [coderCopy encodeObject:self->_signature forKey:@"signature"];
}

- (BOOL)isValid
{
  v5.receiver = self;
  v5.super_class = PDBarcodeServiceBarcodeEventTask;
  isValid = [(PDBarcodeServiceConnectionTask *)&v5 isValid];
  if (isValid)
  {
    LOBYTE(isValid) = self->_barcodeIdentifier && self->_event && self->_signature != 0;
  }

  return isValid;
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

- (void)handleResponse:(id)response data:(id)data
{
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = PDBarcodeServiceBarcodeEventTask;
  responseCopy = response;
  [(PDBarcodeServiceConnectionTask *)&v17 handleResponse:responseCopy data:dataCopy];
  statusCode = [responseCopy statusCode];

  if (statusCode == 403)
  {
    v11 = [[PDBarcodeServiceConnectionForbiddenErrorResponse alloc] initWithData:dataCopy];
    if ([(PDBarcodeServiceConnectionForbiddenErrorResponse *)v11 errorCode]== 40601)
    {
      v16 = PDTaskError(40601, self, 0, @"Invalid Certificate", v12, v13, v14, v15, v17.receiver);
      [(PDNetworkTask *)self reportError:v16];
    }

    [(PDNetworkTask *)self fail:v17.receiver];
  }

  else if (statusCode == 200)
  {
    v9 = [PDBarcodeServiceBarcodeEventResponse alloc];
    v10 = [(PDBarcodeServiceBarcodeEventResponse *)v9 initWithData:dataCopy, v17.receiver, v17.super_class];
    [(PDNetworkTask *)self deliverResult:v10];

    [(PDNetworkTask *)self succeed];
  }

  else
  {
    [(PDNetworkTask *)self fail:v17.receiver];
  }
}

- (void)handleError:(id)error
{
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    errorCopy = error;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error: %@ (%@)", &v6, 0x16u);
  }

  [(PDNetworkTask *)self fail];
}

@end