@interface EKPersistentChangeStoreInfo
- (id)description;
@end

@implementation EKPersistentChangeStoreInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EKPersistentChangeStoreInfo *)self minConsumedClientIdentifier];
  v6 = [v3 stringWithFormat:@"%@ <%p> {minConsumedClientIdentifier %@ minConsumedSequenceNumber = %d; secondMinConsumedSequenceNumber = %d}", v4, self, v5, -[EKPersistentChangeStoreInfo minConsumedSequenceNumber](self, "minConsumedSequenceNumber"), -[EKPersistentChangeStoreInfo secondMinConsumedSequenceNumber](self, "secondMinConsumedSequenceNumber")];;

  return v6;
}

@end