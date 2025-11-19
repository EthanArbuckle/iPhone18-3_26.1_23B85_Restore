@interface EKPersistentChangeStoreRowInfo
- (id)description;
@end

@implementation EKPersistentChangeStoreRowInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EKPersistentChangeStoreRowInfo *)self clientIdentifier];
  v6 = [v3 stringWithFormat:@"%@ <%p> {clientIdentifier %@ consumedSequenceNumber = %d}", v4, self, v5, -[EKPersistentChangeStoreRowInfo consumedSequenceNumber](self, "consumedSequenceNumber")];;

  return v6;
}

@end