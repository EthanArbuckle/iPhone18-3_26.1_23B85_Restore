@interface GDViewServiceHelper
+ (id)donationViewWithAccessAssertion:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)featureViewWithAccessAssertion:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)firstPartyLongTermTopicViewWithAccessAssertion:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)firstPartyShortTermTopicViewWithAccessAssertion:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)pageRankViewWithAccessAssertion:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)personViewWithAccessAssertion:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)visualIdentifierViewWithAccessAssertion:(id)a3 database:(id)a4 error:(id *)a5;
@end

@implementation GDViewServiceHelper

+ (id)firstPartyShortTermTopicViewWithAccessAssertion:(id)a3 database:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [[GDTopicView alloc] initWithAccessAssertion:v7 database:v6];

  return v8;
}

+ (id)firstPartyLongTermTopicViewWithAccessAssertion:(id)a3 database:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [[GDTopicView alloc] initWithAccessAssertion:v7 database:v6];

  return v8;
}

+ (id)featureViewWithAccessAssertion:(id)a3 database:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [[GDFeatureView alloc] initWithAccessAssertion:v7 database:v6];

  return v8;
}

+ (id)pageRankViewWithAccessAssertion:(id)a3 database:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [[GDPageRankView alloc] initWithAccessAssertion:v7 database:v6];

  return v8;
}

+ (id)donationViewWithAccessAssertion:(id)a3 database:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [[GDDonationView alloc] initWithAccessAssertion:v7 database:v6];

  return v8;
}

+ (id)visualIdentifierViewWithAccessAssertion:(id)a3 database:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [[GDVisualIdentifierView alloc] initWithAccessAssertion:v7 database:v6];

  return v8;
}

+ (id)personViewWithAccessAssertion:(id)a3 database:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [[GDPersonView alloc] initWithAccessAssertion:v7 database:v6];

  return v8;
}

@end