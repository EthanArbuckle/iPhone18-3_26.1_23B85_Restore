@interface PKExpressPassInformation(NanoPassKit)
- (id)npk_expressAppletIdentifiers;
- (uint64_t)npk_hasImmediateAutomaticSelectionCriterion;
@end

@implementation PKExpressPassInformation(NanoPassKit)

- (uint64_t)npk_hasImmediateAutomaticSelectionCriterion
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __84__PKExpressPassInformation_NanoPassKit__npk_hasImmediateAutomaticSelectionCriterion__block_invoke;
  v3[3] = &unk_27994B190;
  v3[4] = &v4;
  [a1 enumerateCriteriaWithHandler:v3];
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (id)npk_expressAppletIdentifiers
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__PKExpressPassInformation_NanoPassKit__npk_expressAppletIdentifiers__block_invoke;
  v6[3] = &unk_27994B1B8;
  v7 = v2;
  v3 = v2;
  [a1 enumerateCredentialsWithHandler:v6];
  v4 = [v3 copy];

  return v4;
}

@end