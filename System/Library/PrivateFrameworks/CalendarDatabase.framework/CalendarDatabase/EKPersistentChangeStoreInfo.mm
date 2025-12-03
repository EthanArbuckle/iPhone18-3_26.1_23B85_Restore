@interface EKPersistentChangeStoreInfo
- (id)description;
@end

@implementation EKPersistentChangeStoreInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  minConsumedClientIdentifier = [(EKPersistentChangeStoreInfo *)self minConsumedClientIdentifier];
  v6 = [v3 stringWithFormat:@"%@ <%p> {minConsumedClientIdentifier %@ minConsumedSequenceNumber = %d; secondMinConsumedSequenceNumber = %d}", v4, self, minConsumedClientIdentifier, -[EKPersistentChangeStoreInfo minConsumedSequenceNumber](self, "minConsumedSequenceNumber"), -[EKPersistentChangeStoreInfo secondMinConsumedSequenceNumber](self, "secondMinConsumedSequenceNumber")];;

  return v6;
}

@end