@interface BLDAAPURLRequest
- (BLDAAPURLRequest)initWithDSID:(id)a3 reason:(int64_t)a4;
- (id)createDaapURL:(id)a3;
- (id)description;
- (void)_URLWithRetry:(BOOL)a3 completion:(id)a4;
- (void)_requestWithCompletionHandler:(id)a3;
- (void)_serverParametersWithCompletionHandler:(id)a3;
- (void)_valueForDAAPBagKey:(id)a3 completion:(id)a4;
- (void)executeWithCompletionHandler:(id)a3;
@end

@implementation BLDAAPURLRequest

- (BLDAAPURLRequest)initWithDSID:(id)a3 reason:(int64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = BLDAAPURLRequest;
  v8 = [(BLDAAPURLRequest *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_DSID, a3);
    v9->_reason = a4;
    daapURL = v9->_daapURL;
    v9->_daapURL = &stru_2853E2EC8;
    v9->_requestMethod = 4;
  }

  return v9;
}

- (void)_requestWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241D5E608;
  v6[3] = &unk_278D17FD0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(BLDAAPURLRequest *)self _URLWithCompletionHandler:v6];
}

- (id)createDaapURL:(id)a3
{
  v4 = a3;
  v5 = [(BLDAAPURLRequest *)self daapURL];
  v6 = [v4 URLByAppendingPathComponent:v5];

  return v6;
}

- (void)executeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241D5EBCC;
  v6[3] = &unk_278D17FA8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(BLDAAPURLRequest *)self _requestWithCompletionHandler:v6];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(BLDAAPURLRequest *)self daapURL];
  v7 = [(BLDAAPURLRequest *)self requestMethod];
  v8 = [(BLDAAPURLRequest *)self DSID];
  v9 = [v3 stringWithFormat:@"<%@:%p url=%@ requestMethod=%ld dsid=%@ reason=%ld>", v5, self, v6, v7, v8, -[BLDAAPURLRequest reason](self, "reason")];

  return v9;
}

- (void)_URLWithRetry:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_241D5F02C;
  v8[3] = &unk_278D18020;
  v10 = a3;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(BLDAAPURLRequest *)self _valueForDAAPBagKey:@"base-url" completion:v8];
}

- (void)_valueForDAAPBagKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_241D5F224;
  v10[3] = &unk_278D18048;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(BLDAAPURLRequest *)self _serverParametersWithCompletionHandler:v10];
}

- (void)_serverParametersWithCompletionHandler:(id)a3
{
  v4 = a3;
  bag = self->_bag;
  if (!bag)
  {
    v6 = [MEMORY[0x277CF3300] defaultBag];
    v7 = self->_bag;
    self->_bag = v6;

    bag = self->_bag;
  }

  v8 = [(BUBag *)bag purchaseDAAP];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_241D5F3FC;
  v10[3] = &unk_278D18070;
  v11 = v4;
  v9 = v4;
  [v8 valueWithCompletion:v10];
}

@end