@interface IETestResult
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation IETestResult

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(IETestResult *)self status];
      if (v6 != [v5 status])
      {
        v8 = 0;
LABEL_20:

        goto LABEL_21;
      }

      v21 = [(IETestResult *)self flowId];
      v7 = [v5 flowId];
      if (v21 != v7)
      {
        v20 = [(IETestResult *)self flowId];
        v18 = [v5 flowId];
        if (![v20 isEqualToString:?])
        {
          v8 = 0;
          goto LABEL_18;
        }
      }

      v9 = [(IETestResult *)self testName];
      v10 = [v5 testName];
      if (v9 == v10 || (-[IETestResult testName](self, "testName"), v19 = objc_claimAutoreleasedReturnValue(), [v5 testName], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "isEqualToString:")))
      {
        v11 = [(IETestResult *)self summary];
        v12 = [v5 summary];
        v13 = v12;
        if (v11 == v12)
        {

          v8 = 1;
        }

        else
        {
          v14 = [(IETestResult *)self summary];
          v15 = [v5 summary];
          v8 = [v14 isEqualToString:v15];
        }

        if (v9 == v10)
        {
LABEL_17:

          if (v21 == v7)
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
  v3 = [(IETestResult *)self status];
  v4 = [(IETestResult *)self flowId];
  v5 = [v4 hash];

  v6 = [(IETestResult *)self testName];
  v7 = [v6 hash];

  v8 = [(IETestResult *)self summary];
  v9 = [v8 hash];
  v10 = v5 - v3 + 32 * v3;
  v11 = v9 - (v7 - v10 + 32 * v10) + 32 * (v7 - v10 + 32 * v10);

  return v11 + 923521;
}

@end