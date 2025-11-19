void sub_25555155C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_255553F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _INUICKPInteractionMatchingCardSectionInCard(uint64_t a1, void *a2)
{
  v2 = [a2 interactions];
  v3 = [v2 anyObject];

  return v3;
}

uint64_t _INUICKPIntrinsicInteractiveBehaviorForCardSection(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [objc_opt_class() inuickp_interactiveBehaviorPrecedenceOrder];
  v19 = [v2 count];
  v3 = [v1 inuickp_intrinsicInteractiveBehavior];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  v20 = v2;
  v5 = [v2 indexOfObject:v4];

  if (objc_opt_respondsToSelector())
  {
    v18 = v1;
    v6 = [v1 actionCommands];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = v19 - v5;
      v10 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [v12 inuickp_intrinsicInteractiveBehavior];
            v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
            v15 = v19 - [v20 indexOfObject:v14];

            if (v15 > v9)
            {
              v9 = v15;
              v3 = v13;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    v1 = v18;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v3;
}

id INUICKPInterfaceSectionsFromCard(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = v1;
  v3 = [v1 cardSections];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        v9 = objc_opt_respondsToSelector();
        if (v9)
        {
          v10 = _INUICKPInteractionMatchingCardSectionInCard(v9, v17);
          v11 = [v8 parametersForInteraction:v10];
        }

        else
        {
          v12 = *MEMORY[0x277CF93F0];
          if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v23 = v8;
            _os_log_error_impl(&dword_255550000, v12, OS_LOG_TYPE_ERROR, "Card section %@ doesn't respond to parametersForInteraction:", buf, 0xCu);
          }

          v11 = 0;
        }

        v13 = [[INUICKPCardInterfaceSection alloc] initWithInteractiveBehavior:_INUICKPIntrinsicInteractiveBehaviorForCardSection(v8) parameters:v11];
        [(INUICKPCardInterfaceSection *)v13 setCardSection:v8];
        [v2 addObject:v13];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v5);
  }

  v14 = [v2 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}