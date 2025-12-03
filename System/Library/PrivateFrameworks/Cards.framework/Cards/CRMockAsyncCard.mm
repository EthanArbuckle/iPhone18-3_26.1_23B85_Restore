@interface CRMockAsyncCard
- (void)loadCardWithCompletion:(id)completion;
@end

@implementation CRMockAsyncCard

- (void)loadCardWithCompletion:(id)completion
{
  v34[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v3 = objc_alloc_init(CRBasicCard);
  v4 = objc_alloc_init(MEMORY[0x277D4C6A0]);
  [v4 setTitle:@"Title"];
  v5 = objc_alloc_init(MEMORY[0x277D4C5A8]);
  v6 = [MEMORY[0x277D4C598] textWithString:@"Text1"];
  [v5 setLeadingText:v6];

  leadingText = [v5 leadingText];
  [leadingText setMaxLines:1];

  v8 = objc_alloc_init(MEMORY[0x277D4C5A8]);
  v9 = [MEMORY[0x277D4C598] textWithString:@"Text2"];
  [v8 setLeadingText:v9];

  leadingText2 = [v8 leadingText];
  [leadingText2 setMaxLines:1];

  v11 = objc_alloc_init(MEMORY[0x277D4C5A8]);
  v12 = [MEMORY[0x277D4C598] textWithString:@"More Info..."];
  [v11 setLeadingText:v12];

  v13 = MEMORY[0x277D4C550];
  v14 = [MEMORY[0x277CBEBC0] URLWithString:@"http://en.wikipedia.org/wiki/Main_Page"];
  v15 = [v13 punchoutWithURL:v14];
  v34[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  [v11 setPunchoutOptions:v16];

  v17 = [CRBasicCardSection basicCardSectionWithBackingCardSection:v4];
  v33[0] = v17;
  v18 = [CRBasicCardSection basicCardSectionWithBackingCardSection:v5];
  v33[1] = v18;
  v19 = [CRBasicCardSection basicCardSectionWithBackingCardSection:v8];
  v33[2] = v19;
  v20 = [CRBasicCardSection basicCardSectionWithBackingCardSection:v11];
  v33[3] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
  [(CRBasicCard *)v3 setCardSections:v21];

  interactions = [(CRBasicCard *)self interactions];
  [(CRBasicCard *)v3 setInteractions:interactions];

  dismissalCommands = [(CRBasicCard *)self dismissalCommands];
  [(CRBasicCard *)v3 setDismissalCommands:dismissalCommands];

  v24 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__CRMockAsyncCard_loadCardWithCompletion___block_invoke;
  block[3] = &unk_278DA5920;
  v31 = v3;
  v32 = completionCopy;
  v25 = v3;
  v26 = completionCopy;
  dispatch_after(v24, MEMORY[0x277D85CD0], block);

  v27 = *MEMORY[0x277D85DE8];
}

@end