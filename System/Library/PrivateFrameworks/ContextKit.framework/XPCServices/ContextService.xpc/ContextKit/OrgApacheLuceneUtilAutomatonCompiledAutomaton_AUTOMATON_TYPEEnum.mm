@interface OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum
+ (void)initialize;
@end

@implementation OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"NONE", 0);
    OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_values_[0] = v2;
    v3 = [OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"ALL", 1);
    qword_100557AB0 = v3;
    v4 = [OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v4, @"SINGLE", 2);
    qword_100557AB8 = v4;
    v5 = [OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v5, @"NORMAL", 3);
    qword_100557AC0 = v5;
    atomic_store(1u, OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum__initialized);
  }
}

@end