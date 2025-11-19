@interface CPLBGSTActivitiesReport
- (CPLBGSTActivitiesReport)init;
- (CPLBGSTActivitiesReport)initWithCoder:(id)a3;
- (id)_reportForTaskWithIdentifier:(id)a3;
- (id)lastSubmitDateForTaskWithIdentifier:(id)a3;
- (id)statusesWithNow:(id)a3 prefix:(id)a4;
- (void)didAcquireTaskWithIdentifier:(id)a3;
- (void)didCancelTaskWithIdentifier:(id)a3;
- (void)didDeferTaskWithIdentifier:(id)a3;
- (void)didErrorTaskWithIdentifier:(id)a3;
- (void)didExpireTaskWithIdentifier:(id)a3 reason:(unint64_t)a4;
- (void)didFinishTaskWithIdentifier:(id)a3;
- (void)didSubmitTaskWithIdentifier:(id)a3;
- (void)didUpdateTaskWithIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (CPLBGSTActivitiesReport)initWithCoder:(id)a3
{
  v5 = a3;
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
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"reports"];
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

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_10018FEC0(self, a2);
  }

  [v5 encodeObject:self->_reportPerIdentifier forKey:@"reports"];
}

- (id)_reportForTaskWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_reportPerIdentifier objectForKeyedSubscript:v4];

  if (!v5)
  {
    v6 = [[CPLBGSTActivityReport alloc] initWithTaskIdentifier:v4];
    [(NSMutableDictionary *)self->_reportPerIdentifier setObject:v6 forKeyedSubscript:v4];
  }

  v7 = [(NSMutableDictionary *)self->_reportPerIdentifier objectForKeyedSubscript:v4];

  return v7;
}

- (void)didSubmitTaskWithIdentifier:(id)a3
{
  v3 = [(CPLBGSTActivitiesReport *)self _reportForTaskWithIdentifier:a3];
  [v3 didSubmit];
}

- (void)didUpdateTaskWithIdentifier:(id)a3
{
  v3 = [(CPLBGSTActivitiesReport *)self _reportForTaskWithIdentifier:a3];
  [v3 didUpdate];
}

- (void)didCancelTaskWithIdentifier:(id)a3
{
  v3 = [(CPLBGSTActivitiesReport *)self _reportForTaskWithIdentifier:a3];
  [v3 didCancel];
}

- (void)didAcquireTaskWithIdentifier:(id)a3
{
  v3 = [(CPLBGSTActivitiesReport *)self _reportForTaskWithIdentifier:a3];
  [v3 didAcquire];
}

- (void)didExpireTaskWithIdentifier:(id)a3 reason:(unint64_t)a4
{
  v5 = [(CPLBGSTActivitiesReport *)self _reportForTaskWithIdentifier:a3];
  [v5 didExpireWithReason:a4];
}

- (void)didDeferTaskWithIdentifier:(id)a3
{
  v3 = [(CPLBGSTActivitiesReport *)self _reportForTaskWithIdentifier:a3];
  [v3 didDefer];
}

- (void)didErrorTaskWithIdentifier:(id)a3
{
  v3 = [(CPLBGSTActivitiesReport *)self _reportForTaskWithIdentifier:a3];
  [v3 didError];
}

- (void)didFinishTaskWithIdentifier:(id)a3
{
  v3 = [(CPLBGSTActivitiesReport *)self _reportForTaskWithIdentifier:a3];
  [v3 didFinish];
}

- (id)statusesWithNow:(id)a3 prefix:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableDictionary count](self->_reportPerIdentifier, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [(NSMutableDictionary *)self->_reportPerIdentifier allKeys];
  v10 = [v9 sortedArrayUsingSelector:"compare:"];

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
        v16 = [v15 statusWithNow:v6 prefix:v7];

        [v8 addObject:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v17 = [v8 copy];

  return v17;
}

- (id)lastSubmitDateForTaskWithIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_reportPerIdentifier objectForKeyedSubscript:a3];
  v4 = [v3 lastSubmitDate];

  return v4;
}

@end