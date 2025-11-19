@interface CPSSharingRequest
- (CPSSharingRequest)initWithCoder:(id)a3;
- (CPSSharingRequest)initWithData:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPSSharingRequest

- (CPSSharingRequest)initWithData:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(CPSSharingRequest *)a2 initWithData:?];
  }

  v7 = v6;
  v11.receiver = self;
  v11.super_class = CPSSharingRequest;
  v8 = [(CPSAuthenticationRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_requestData, a3);
  }

  return v9;
}

- (CPSSharingRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CPSSharingRequest;
  v5 = [(CPSAuthenticationRequest *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"requestData"];
    requestData = v5->_requestData;
    v5->_requestData = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeArrayOfObjectsOfClass:v9 forKey:@"customSharingMethods"];
    customSharingMethods = v5->_customSharingMethods;
    v5->_customSharingMethods = v10;

    v12 = objc_opt_self();
    v13 = [v4 decodeObjectOfClass:v12 forKey:@"customTitleText"];
    customTitleText = v5->_customTitleText;
    v5->_customTitleText = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CPSSharingRequest;
  v4 = a3;
  [(CPSAuthenticationRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_requestData forKey:{@"requestData", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_customSharingMethods forKey:@"customSharingMethods"];
  [v4 encodeObject:self->_customTitleText forKey:@"customTitleText"];
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