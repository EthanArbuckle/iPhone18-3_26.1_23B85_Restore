@interface COUnhandledRapportRequest
- (COUnhandledRapportRequest)initWithRequest:(id)a3 identifier:(id)a4 data:(id)a5 options:(id)a6 handler:(id)a7 at:(unint64_t)a8;
@end

@implementation COUnhandledRapportRequest

- (COUnhandledRapportRequest)initWithRequest:(id)a3 identifier:(id)a4 data:(id)a5 options:(id)a6 handler:(id)a7 at:(unint64_t)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v31.receiver = self;
  v31.super_class = COUnhandledRapportRequest;
  v20 = [(COUnhandledRapportRequest *)&v31 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_request, a3);
    v22 = [v16 copy];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    v24 = [v17 copy];
    data = v21->_data;
    v21->_data = v24;

    v26 = [v18 copy];
    options = v21->_options;
    v21->_options = v26;

    v28 = MEMORY[0x245D5FF10](v19);
    handler = v21->_handler;
    v21->_handler = v28;

    v21->_timestamp = a8;
  }

  return v21;
}

@end