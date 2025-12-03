@interface BLDAAPURLRequest
- (BLDAAPURLRequest)initWithDSID:(id)d reason:(int64_t)reason;
- (id)createDaapURL:(id)l;
- (id)description;
- (void)_URLWithRetry:(BOOL)retry completion:(id)completion;
- (void)_requestWithCompletionHandler:(id)handler;
- (void)_serverParametersWithCompletionHandler:(id)handler;
- (void)_valueForDAAPBagKey:(id)key completion:(id)completion;
- (void)executeWithCompletionHandler:(id)handler;
@end

@implementation BLDAAPURLRequest

- (BLDAAPURLRequest)initWithDSID:(id)d reason:(int64_t)reason
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = BLDAAPURLRequest;
  v8 = [(BLDAAPURLRequest *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_DSID, d);
    v9->_reason = reason;
    daapURL = v9->_daapURL;
    v9->_daapURL = &stru_2853E2EC8;
    v9->_requestMethod = 4;
  }

  return v9;
}

- (void)_requestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241D5E608;
  v6[3] = &unk_278D17FD0;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(BLDAAPURLRequest *)self _URLWithCompletionHandler:v6];
}

- (id)createDaapURL:(id)l
{
  lCopy = l;
  daapURL = [(BLDAAPURLRequest *)self daapURL];
  v6 = [lCopy URLByAppendingPathComponent:daapURL];

  return v6;
}

- (void)executeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241D5EBCC;
  v6[3] = &unk_278D17FA8;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(BLDAAPURLRequest *)self _requestWithCompletionHandler:v6];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  daapURL = [(BLDAAPURLRequest *)self daapURL];
  requestMethod = [(BLDAAPURLRequest *)self requestMethod];
  dSID = [(BLDAAPURLRequest *)self DSID];
  v9 = [v3 stringWithFormat:@"<%@:%p url=%@ requestMethod=%ld dsid=%@ reason=%ld>", v5, self, daapURL, requestMethod, dSID, -[BLDAAPURLRequest reason](self, "reason")];

  return v9;
}

- (void)_URLWithRetry:(BOOL)retry completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_241D5F02C;
  v8[3] = &unk_278D18020;
  retryCopy = retry;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(BLDAAPURLRequest *)self _valueForDAAPBagKey:@"base-url" completion:v8];
}

- (void)_valueForDAAPBagKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_241D5F224;
  v10[3] = &unk_278D18048;
  v11 = keyCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = keyCopy;
  [(BLDAAPURLRequest *)self _serverParametersWithCompletionHandler:v10];
}

- (void)_serverParametersWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  bag = self->_bag;
  if (!bag)
  {
    defaultBag = [MEMORY[0x277CF3300] defaultBag];
    v7 = self->_bag;
    self->_bag = defaultBag;

    bag = self->_bag;
  }

  purchaseDAAP = [(BUBag *)bag purchaseDAAP];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_241D5F3FC;
  v10[3] = &unk_278D18070;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [purchaseDAAP valueWithCompletion:v10];
}

@end