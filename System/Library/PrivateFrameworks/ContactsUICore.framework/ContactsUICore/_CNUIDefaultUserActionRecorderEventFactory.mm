@interface _CNUIDefaultUserActionRecorderEventFactory
- (id)recentEventForAddress:(id)address kind:(id)kind metadata:(id)metadata;
@end

@implementation _CNUIDefaultUserActionRecorderEventFactory

- (id)recentEventForAddress:(id)address kind:(id)kind metadata:(id)metadata
{
  v7 = MEMORY[0x1E6998FC8];
  v8 = MEMORY[0x1E695DF00];
  metadataCopy = metadata;
  kindCopy = kind;
  addressCopy = address;
  date = [v8 date];
  v13 = [v7 recentEventForAddress:addressCopy displayName:0 kind:kindCopy date:date weight:0 metadata:metadataCopy options:0];

  return v13;
}

@end