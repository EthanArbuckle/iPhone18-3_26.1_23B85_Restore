@interface PKSTSTapToProvisionResult
- (PKSTSTapToProvisionResult)initWithSTSResult:(id)result;
@end

@implementation PKSTSTapToProvisionResult

- (PKSTSTapToProvisionResult)initWithSTSResult:(id)result
{
  resultCopy = result;
  v33.receiver = self;
  v33.super_class = PKSTSTapToProvisionResult;
  v5 = [(PKSTSTapToProvisionResult *)&v33 init];
  if (v5)
  {
    provisionDataBlob = [resultCopy provisionDataBlob];
    encryptedTapData = v5->_encryptedTapData;
    v5->_encryptedTapData = provisionDataBlob;

    casdCertificate = [resultCopy casdCertificate];
    casdCertificate = v5->_casdCertificate;
    v5->_casdCertificate = casdCertificate;

    networkName = [resultCopy networkName];
    v11 = _MergedGlobals_176();
    v12 = networkName;
    v13 = v11;
    v14 = v13;
    if (v13 == v12)
    {
    }

    else
    {
      if (!v12 || !v13)
      {

        goto LABEL_10;
      }

      v15 = [v12 isEqualToString:v13];

      if ((v15 & 1) == 0)
      {
LABEL_10:
        v17 = off_1ED6D1100();
        v18 = v12;
        v19 = v17;
        v20 = v19;
        if (v19 == v18)
        {
        }

        else
        {
          if (!v12 || !v19)
          {

            goto LABEL_18;
          }

          v21 = [v18 isEqualToString:v19];

          if ((v21 & 1) == 0)
          {
LABEL_18:
            v22 = off_1ED6D1108();
            v23 = v18;
            v24 = v22;
            v25 = v24;
            if (v24 == v23)
            {
            }

            else
            {
              if (!v12 || !v24)
              {

LABEL_26:
                v27 = off_1ED6D1110();
                v28 = v23;
                v29 = v27;
                v30 = v29;
                if (v29 == v28)
                {
                }

                else
                {
                  if (!v12 || !v29)
                  {

LABEL_34:
                    v16 = 0;
                    goto LABEL_35;
                  }

                  v31 = [v28 isEqualToString:v29];

                  if (!v31)
                  {
                    goto LABEL_34;
                  }
                }

                v16 = 4;
LABEL_35:

                v5->_network = v16;
                goto LABEL_36;
              }

              v26 = [v23 isEqualToString:v24];

              if ((v26 & 1) == 0)
              {
                goto LABEL_26;
              }
            }

            v16 = 3;
            goto LABEL_35;
          }
        }

        v16 = 2;
        goto LABEL_35;
      }
    }

    v16 = 1;
    goto LABEL_35;
  }

LABEL_36:

  return v5;
}

@end