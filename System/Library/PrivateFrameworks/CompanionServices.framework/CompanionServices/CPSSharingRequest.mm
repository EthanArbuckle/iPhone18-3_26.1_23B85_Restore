@interface CPSSharingRequest
- (CPSSharingRequest)initWithCoder:(id)coder;
- (CPSSharingRequest)initWithData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPSSharingRequest

- (CPSSharingRequest)initWithData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    [(CPSSharingRequest *)a2 initWithData:?];
  }

  v7 = dataCopy;
  v11.receiver = self;
  v11.super_class = CPSSharingRequest;
  v8 = [(CPSAuthenticationRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_requestData, data);
  }

  return v9;
}

- (CPSSharingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CPSSharingRequest;
  v5 = [(CPSAuthenticationRequest *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"requestData"];
    requestData = v5->_requestData;
    v5->_requestData = v7;

    v9 = objc_opt_self();
    v10 = [coderCopy decodeArrayOfObjectsOfClass:v9 forKey:@"customSharingMethods"];
    customSharingMethods = v5->_customSharingMethods;
    v5->_customSharingMethods = v10;

    v12 = objc_opt_self();
    v13 = [coderCopy decodeObjectOfClass:v12 forKey:@"customTitleText"];
    customTitleText = v5->_customTitleText;
    v5->_customTitleText = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CPSSharingRequest;
  coderCopy = coder;
  [(CPSAuthenticationRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_requestData forKey:{@"requestData", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_customSharingMethods forKey:@"customSharingMethods"];
  [coderCopy encodeObject:self->_customTitleText forKey:@"customTitleText"];
}

- (void)initWithData:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"data != ((void*)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"CPSSharingRequest.m";
    v16 = 1024;
    v17 = 19;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_243D1C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end