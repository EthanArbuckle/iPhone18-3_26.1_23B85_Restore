@interface IETestResult
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation IETestResult

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      status = [(IETestResult *)self status];
      if (status != [v5 status])
      {
        v8 = 0;
LABEL_20:

        goto LABEL_21;
      }

      flowId = [(IETestResult *)self flowId];
      flowId2 = [v5 flowId];
      if (flowId != flowId2)
      {
        flowId3 = [(IETestResult *)self flowId];
        flowId4 = [v5 flowId];
        if (![flowId3 isEqualToString:?])
        {
          v8 = 0;
          goto LABEL_18;
        }
      }

      testName = [(IETestResult *)self testName];
      testName2 = [v5 testName];
      if (testName == testName2 || (-[IETestResult testName](self, "testName"), v19 = objc_claimAutoreleasedReturnValue(), [v5 testName], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "isEqualToString:")))
      {
        summary = [(IETestResult *)self summary];
        summary2 = [v5 summary];
        v13 = summary2;
        if (summary == summary2)
        {

          v8 = 1;
        }

        else
        {
          summary3 = [(IETestResult *)self summary];
          summary4 = [v5 summary];
          v8 = [summary3 isEqualToString:summary4];
        }

        if (testName == testName2)
        {
LABEL_17:

          if (flowId == flowId2)
          {
LABEL_19:

            goto LABEL_20;
          }

LABEL_18:

          goto LABEL_19;
        }
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_17;
    }
  }

  v8 = 0;
LABEL_21:

  return v8;
}

- (unint64_t)hash
{
  status = [(IETestResult *)self status];
  flowId = [(IETestResult *)self flowId];
  v5 = [flowId hash];

  testName = [(IETestResult *)self testName];
  v7 = [testName hash];

  summary = [(IETestResult *)self summary];
  v9 = [summary hash];
  v10 = v5 - status + 32 * status;
  v11 = v9 - (v7 - v10 + 32 * v10) + 32 * (v7 - v10 + 32 * v10);

  return v11 + 923521;
}

@end