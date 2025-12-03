@interface CKOperationConfiguration
- (void)setCPLDiscretionary:(BOOL)discretionary;
@end

@implementation CKOperationConfiguration

- (void)setCPLDiscretionary:(BOOL)discretionary
{
  if (discretionary)
  {
    [(CKOperationConfiguration *)self setDiscretionaryNetworkBehavior:2];
  }

  else
  {
    [(CKOperationConfiguration *)self setDiscretionaryNetworkBehavior:0];
  }
}

@end