@interface MIGroupContainer
+ (id)groupContainerWithIdentifier:(id)identifier forPersona:(id)persona createIfNeeded:(BOOL)needed error:(id *)error;
@end

@implementation MIGroupContainer

+ (id)groupContainerWithIdentifier:(id)identifier forPersona:(id)persona createIfNeeded:(BOOL)needed error:(id *)error
{
  neededCopy = needed;
  v14 = 0;
  personaCopy = persona;
  identifierCopy = identifier;
  v11 = [objc_opt_class() containerWithIdentifier:identifierCopy forPersona:personaCopy ofContentClass:7 createIfNeeded:neededCopy created:&v14 error:error];

  if ([v11 makeContainerLiveWithError:error])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end