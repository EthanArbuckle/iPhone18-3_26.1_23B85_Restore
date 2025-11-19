@interface OrgApacheLuceneUtilAutomatonAutomata
+ (id)makeEmpty;
+ (id)makeEmptyString;
@end

@implementation OrgApacheLuceneUtilAutomatonAutomata

+ (id)makeEmpty
{
  v2 = new_OrgApacheLuceneUtilAutomatonAutomaton_init();
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 finishState];
  return v2;
}

+ (id)makeEmptyString
{
  v2 = new_OrgApacheLuceneUtilAutomatonAutomaton_init();
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 createState];
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v2 setAcceptWithInt:0 withBoolean:1];
  return v2;
}

@end