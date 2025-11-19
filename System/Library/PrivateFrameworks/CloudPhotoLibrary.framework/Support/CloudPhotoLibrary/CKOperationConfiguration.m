@interface CKOperationConfiguration
- (void)setCPLDiscretionary:(BOOL)a3;
@end

@implementation CKOperationConfiguration

- (void)setCPLDiscretionary:(BOOL)a3
{
  if (a3)
  {
    [(CKOperationConfiguration *)self setDiscretionaryNetworkBehavior:2];
  }

  else
  {
    [(CKOperationConfiguration *)self setDiscretionaryNetworkBehavior:0];
  }
}

@end