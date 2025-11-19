@interface NPKContactlessPaymentSessionSoundsManager
- (void)contactlessPaymentSessionManager:(id)a3 didChangeSessionState:(id)a4;
@end

@implementation NPKContactlessPaymentSessionSoundsManager

- (void)contactlessPaymentSessionManager:(id)a3 didChangeSessionState:(id)a4
{
  v28 = a4;
  if (!NPKDoesSessionStateRepresentAuthorizationTimeoutForPassRequiringAuthorization(v28))
  {
    v6 = [v28 completionReason];
    if (v6 <= 0xB)
    {
      if (((1 << v6) & 0xF70) != 0)
      {
        v4 = &__block_literal_global_57;
LABEL_6:
        v5 = v28;
        goto LABEL_7;
      }

      if (v6 == 3)
      {
        kdebug_trace();
        v7 = [v28 currentPass];
        v8 = [v7 paymentPass];
        v9 = [v8 isAccessPass];

        if (v9)
        {
          v4 = &__block_literal_global_59;
        }

        else
        {
          v13 = [v28 currentPass];
          v14 = [v13 paymentPass];
          v15 = [v14 isIdentityPass];

          if (v15)
          {
            v4 = &__block_literal_global_61;
          }

          else
          {
            v4 = &__block_literal_global_63;
          }
        }

        goto LABEL_6;
      }
    }

    v10 = [v28 failureType];
    if (v10 <= 0xB && ((1 << v10) & 0xFBE) != 0 && ![v28 userRejectedReleaseData])
    {
      v4 = &__block_literal_global_65;
      goto LABEL_6;
    }

    v11 = [v28 transactionContext];
    v12 = [v11 authenticationRequested];

    if (v12)
    {
      v4 = &__block_literal_global_67_0;
      goto LABEL_6;
    }

    v16 = [v28 transactionContext];
    if ([v16 transactionType] == 5)
    {
      v17 = [v28 transactionContext];
      if ([v17 transactionStatus] == 1)
      {
        v18 = [v28 transactionContext];
        v19 = [v18 releaseDataStatus];

        if (v19 == 1)
        {
          v4 = &__block_literal_global_69_0;
          goto LABEL_6;
        }

LABEL_31:
        v20 = [v28 transactionContext];
        v21 = [v20 transactionStatus];

        if (v21 == 2)
        {
          v22 = [v28 currentPass];
          v23 = [v22 paymentPass];
          v24 = [v23 isAccessPass];

          if (v24)
          {
            v4 = &__block_literal_global_71;
          }

          else
          {
            v25 = [v28 currentPass];
            v26 = [v25 paymentPass];
            v27 = [v26 isIdentityPass];

            if (v27)
            {
              if ([v28 userRejectedReleaseData])
              {
                v4 = 0;
              }

              else
              {
                v4 = &__block_literal_global_73_1;
              }
            }

            else
            {
              v4 = &__block_literal_global_75;
            }
          }
        }

        else
        {
          v4 = 0;
        }

        goto LABEL_6;
      }
    }

    goto LABEL_31;
  }

  v4 = &__block_literal_global_26;
  v5 = v28;
LABEL_7:
  if ([v5 expressTransactionStatus] != 5 && v4)
  {
    v4[2](v4);
  }
}

@end