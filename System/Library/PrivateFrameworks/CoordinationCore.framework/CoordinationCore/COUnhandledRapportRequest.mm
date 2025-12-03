@interface COUnhandledRapportRequest
- (COUnhandledRapportRequest)initWithRequest:(id)request identifier:(id)identifier data:(id)data options:(id)options handler:(id)handler at:(unint64_t)at;
@end

@implementation COUnhandledRapportRequest

- (COUnhandledRapportRequest)initWithRequest:(id)request identifier:(id)identifier data:(id)data options:(id)options handler:(id)handler at:(unint64_t)at
{
  requestCopy = request;
  identifierCopy = identifier;
  dataCopy = data;
  optionsCopy = options;
  handlerCopy = handler;
  v31.receiver = self;
  v31.super_class = COUnhandledRapportRequest;
  v20 = [(COUnhandledRapportRequest *)&v31 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_request, request);
    v22 = [identifierCopy copy];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    v24 = [dataCopy copy];
    data = v21->_data;
    v21->_data = v24;

    v26 = [optionsCopy copy];
    options = v21->_options;
    v21->_options = v26;

    v28 = MEMORY[0x245D5FF10](handlerCopy);
    handler = v21->_handler;
    v21->_handler = v28;

    v21->_timestamp = at;
  }

  return v21;
}

@end