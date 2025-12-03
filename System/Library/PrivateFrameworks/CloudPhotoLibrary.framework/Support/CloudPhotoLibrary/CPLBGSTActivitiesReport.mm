@interface CPLBGSTActivitiesReport
- (CPLBGSTActivitiesReport)init;
- (CPLBGSTActivitiesReport)initWithCoder:(id)coder;
- (id)_reportForTaskWithIdentifier:(id)identifier;
- (id)lastSubmitDateForTaskWithIdentifier:(id)identifier;
- (id)statusesWithNow:(id)now prefix:(id)prefix;
- (void)didAcquireTaskWithIdentifier:(id)identifier;
- (void)didCancelTaskWithIdentifier:(id)identifier;
- (void)didDeferTaskWithIdentifier:(id)identifier;
- (void)didErrorTaskWithIdentifier:(id)identifier;
- (void)didExpireTaskWithIdentifier:(id)identifier reason:(unint64_t)reason;
- (void)didFinishTaskWithIdentifier:(id)identifier;
- (void)didSubmitTaskWithIdentifier:(id)identifier;
- (void)didUpdateTaskWithIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPLBGSTActivitiesReport

- (CPLBGSTActivitiesReport)init
{
  v6.receiver = self;
  v6.super_class = CPLBGSTActivitiesReport;
  v2 = [(CPLBGSTActivitiesReport *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    reportPerIdentifier = v2->_reportPerIdentifier;
    v2->_reportPerIdentifier = v3;
  }

  return v2;
}

- (CPLBGSTActivitiesReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_10018FDA4(self, a2);
  }

  v13.receiver = self;
  v13.super_class = CPLBGSTActivitiesReport;
  v6 = [(CPLBGSTActivitiesReport *)&v13 init];
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"reports"];
  reportPerIdentifier = v6->_reportPerIdentifier;
  v6->_reportPerIdentifier = v9;

  if (!v6->_reportPerIdentifier)
  {
    v11 = 0;
  }

  else
  {
LABEL_4:
    v11 = v6;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_10018FEC0(self, a2);
  }

  [coderCopy encodeObject:self->_reportPerIdentifier forKey:@"reports"];
}

- (id)_reportForTaskWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_reportPerIdentifier objectForKeyedSubscript:identifierCopy];

  if (!v5)
  {
    v6 = [[CPLBGSTActivityReport alloc] initWithTaskIdentifier:identifierCopy];
    [(NSMutableDictionary *)self->_reportPerIdentifier setObject:v6 forKeyedSubscript:identifierCopy];
  }

  v7 = [(NSMutableDictionary *)self->_reportPerIdentifier objectForKeyedSubscript:identifierCopy];

  return v7;
}

- (void)didSubmitTaskWithIdentifier:(id)identifier
{
  v3 = [(CPLBGSTActivitiesReport *)self _reportForTaskWithIdentifier:identifier];
  [v3 didSubmit];
}

- (void)didUpdateTaskWithIdentifier:(id)identifier
{
  v3 = [(CPLBGSTActivitiesReport *)self _reportForTaskWithIdentifier:identifier];
  [v3 didUpdate];
}

- (void)didCancelTaskWithIdentifier:(id)identifier
{
  v3 = [(CPLBGSTActivitiesReport *)self _reportForTaskWithIdentifier:identifier];
  [v3 didCancel];
}

- (void)didAcquireTaskWithIdentifier:(id)identifier
{
  v3 = [(CPLBGSTActivitiesReport *)self _reportForTaskWithIdentifier:identifier];
  [v3 didAcquire];
}

- (void)didExpireTaskWithIdentifier:(id)identifier reason:(unint64_t)reason
{
  v5 = [(CPLBGSTActivitiesReport *)self _reportForTaskWithIdentifier:identifier];
  [v5 didExpireWithReason:reason];
}

- (void)didDeferTaskWithIdentifier:(id)identifier
{
  v3 = [(CPLBGSTActivitiesReport *)self _reportForTaskWithIdentifier:identifier];
  [v3 didDefer];
}

- (void)didErrorTaskWithIdentifier:(id)identifier
{
  v3 = [(CPLBGSTActivitiesReport *)self _reportForTaskWithIdentifier:identifier];
  [v3 didError];
}

- (void)didFinishTaskWithIdentifier:(id)identifier
{
  v3 = [(CPLBGSTActivitiesReport *)self _reportForTaskWithIdentifier:identifier];
  [v3 didFinish];
}

- (id)statusesWithNow:(id)now prefix:(id)prefix
{
  nowCopy = now;
  prefixCopy = prefix;
  v8 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableDictionary count](self->_reportPerIdentifier, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  allKeys = [(NSMutableDictionary *)self->_reportPerIdentifier allKeys];
  v10 = [allKeys sortedArrayUsingSelector:"compare:"];

  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(NSMutableDictionary *)self->_reportPerIdentifier objectForKeyedSubscript:*(*(&v19 + 1) + 8 * i)];
        v16 = [v15 statusWithNow:nowCopy prefix:prefixCopy];

        [v8 addObject:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v17 = [v8 copy];

  return v17;
}

- (id)lastSubmitDateForTaskWithIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_reportPerIdentifier objectForKeyedSubscript:identifier];
  lastSubmitDate = [v3 lastSubmitDate];

  return lastSubmitDate;
}

@end