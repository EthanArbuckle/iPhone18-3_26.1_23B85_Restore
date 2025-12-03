@interface GDViewServiceHelper
+ (id)donationViewWithAccessAssertion:(id)assertion database:(id)database error:(id *)error;
+ (id)featureViewWithAccessAssertion:(id)assertion database:(id)database error:(id *)error;
+ (id)firstPartyLongTermTopicViewWithAccessAssertion:(id)assertion database:(id)database error:(id *)error;
+ (id)firstPartyShortTermTopicViewWithAccessAssertion:(id)assertion database:(id)database error:(id *)error;
+ (id)pageRankViewWithAccessAssertion:(id)assertion database:(id)database error:(id *)error;
+ (id)personViewWithAccessAssertion:(id)assertion database:(id)database error:(id *)error;
+ (id)visualIdentifierViewWithAccessAssertion:(id)assertion database:(id)database error:(id *)error;
@end

@implementation GDViewServiceHelper

+ (id)firstPartyShortTermTopicViewWithAccessAssertion:(id)assertion database:(id)database error:(id *)error
{
  databaseCopy = database;
  assertionCopy = assertion;
  v8 = [[GDTopicView alloc] initWithAccessAssertion:assertionCopy database:databaseCopy];

  return v8;
}

+ (id)firstPartyLongTermTopicViewWithAccessAssertion:(id)assertion database:(id)database error:(id *)error
{
  databaseCopy = database;
  assertionCopy = assertion;
  v8 = [[GDTopicView alloc] initWithAccessAssertion:assertionCopy database:databaseCopy];

  return v8;
}

+ (id)featureViewWithAccessAssertion:(id)assertion database:(id)database error:(id *)error
{
  databaseCopy = database;
  assertionCopy = assertion;
  v8 = [[GDFeatureView alloc] initWithAccessAssertion:assertionCopy database:databaseCopy];

  return v8;
}

+ (id)pageRankViewWithAccessAssertion:(id)assertion database:(id)database error:(id *)error
{
  databaseCopy = database;
  assertionCopy = assertion;
  v8 = [[GDPageRankView alloc] initWithAccessAssertion:assertionCopy database:databaseCopy];

  return v8;
}

+ (id)donationViewWithAccessAssertion:(id)assertion database:(id)database error:(id *)error
{
  databaseCopy = database;
  assertionCopy = assertion;
  v8 = [[GDDonationView alloc] initWithAccessAssertion:assertionCopy database:databaseCopy];

  return v8;
}

+ (id)visualIdentifierViewWithAccessAssertion:(id)assertion database:(id)database error:(id *)error
{
  databaseCopy = database;
  assertionCopy = assertion;
  v8 = [[GDVisualIdentifierView alloc] initWithAccessAssertion:assertionCopy database:databaseCopy];

  return v8;
}

+ (id)personViewWithAccessAssertion:(id)assertion database:(id)database error:(id *)error
{
  databaseCopy = database;
  assertionCopy = assertion;
  v8 = [[GDPersonView alloc] initWithAccessAssertion:assertionCopy database:databaseCopy];

  return v8;
}

@end