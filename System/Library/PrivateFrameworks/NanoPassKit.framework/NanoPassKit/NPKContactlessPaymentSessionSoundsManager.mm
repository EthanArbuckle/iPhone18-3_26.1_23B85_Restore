@interface NPKContactlessPaymentSessionSoundsManager
- (void)contactlessPaymentSessionManager:(id)manager didChangeSessionState:(id)state;
@end

@implementation NPKContactlessPaymentSessionSoundsManager

- (void)contactlessPaymentSessionManager:(id)manager didChangeSessionState:(id)state
{
  stateCopy = state;
  if (!NPKDoesSessionStateRepresentAuthorizationTimeoutForPassRequiringAuthorization(stateCopy))
  {
    completionReason = [stateCopy completionReason];
    if (completionReason <= 0xB)
    {
      if (((1 << completionReason) & 0xF70) != 0)
      {
        v4 = &__block_literal_global_57;
LABEL_6:
        v5 = stateCopy;
        goto LABEL_7;
      }

      if (completionReason == 3)
      {
        kdebug_trace();
        currentPass = [stateCopy currentPass];
        paymentPass = [currentPass paymentPass];
        isAccessPass = [paymentPass isAccessPass];

        if (isAccessPass)
        {
          v4 = &__block_literal_global_59;
        }

        else
        {
          currentPass2 = [stateCopy currentPass];
          paymentPass2 = [currentPass2 paymentPass];
          isIdentityPass = [paymentPass2 isIdentityPass];

          if (isIdentityPass)
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

    failureType = [stateCopy failureType];
    if (failureType <= 0xB && ((1 << failureType) & 0xFBE) != 0 && ![stateCopy userRejectedReleaseData])
    {
      v4 = &__block_literal_global_65;
      goto LABEL_6;
    }

    transactionContext = [stateCopy transactionContext];
    authenticationRequested = [transactionContext authenticationRequested];

    if (authenticationRequested)
    {
      v4 = &__block_literal_global_67_0;
      goto LABEL_6;
    }

    transactionContext2 = [stateCopy transactionContext];
    if ([transactionContext2 transactionType] == 5)
    {
      transactionContext3 = [stateCopy transactionContext];
      if ([transactionContext3 transactionStatus] == 1)
      {
        transactionContext4 = [stateCopy transactionContext];
        releaseDataStatus = [transactionContext4 releaseDataStatus];

        if (releaseDataStatus == 1)
        {
          v4 = &__block_literal_global_69_0;
          goto LABEL_6;
        }

LABEL_31:
        transactionContext5 = [stateCopy transactionContext];
        transactionStatus = [transactionContext5 transactionStatus];

        if (transactionStatus == 2)
        {
          currentPass3 = [stateCopy currentPass];
          paymentPass3 = [currentPass3 paymentPass];
          isAccessPass2 = [paymentPass3 isAccessPass];

          if (isAccessPass2)
          {
            v4 = &__block_literal_global_71;
          }

          else
          {
            currentPass4 = [stateCopy currentPass];
            paymentPass4 = [currentPass4 paymentPass];
            isIdentityPass2 = [paymentPass4 isIdentityPass];

            if (isIdentityPass2)
            {
              if ([stateCopy userRejectedReleaseData])
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
  v5 = stateCopy;
LABEL_7:
  if ([v5 expressTransactionStatus] != 5 && v4)
  {
    v4[2](v4);
  }
}

@end