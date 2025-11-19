@interface ICPortraitLexiconSource
@end

@implementation ICPortraitLexiconSource

uint64_t __51___ICPortraitLexiconSource__makePPNamedEntityStore__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _makePPNamedEntityStore_store;
  _makePPNamedEntityStore_store = v0;

  v2 = _makePPNamedEntityStore_store;

  return [v2 setClientIdentifier:@"ICLex"];
}

uint64_t __48___ICPortraitLexiconSource__makeContactDelegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 1);
    [v3 setupContacts];
  }

  return 0;
}

uint64_t __48___ICPortraitLexiconSource__makeContactDelegate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(WeakRetained + 1);
    v7 = [_ICPortraitUtilities contactRecordFromPortraitContactRecord:v3];
    [v6 handleContact:v7];
  }

  return 0;
}

void __48___ICPortraitLexiconSource__makeContactDelegate__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 1);
    [v2 completeContacts];

    WeakRetained = v3;
  }
}

uint64_t __48___ICPortraitLexiconSource__makeContactDelegate__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 1);
    [v3 setupRecentContacts];
  }

  return 0;
}

uint64_t __48___ICPortraitLexiconSource__makeContactDelegate__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(WeakRetained + 1);
    v7 = [_ICPortraitUtilities contactRecordFromPortraitContactRecord:v3];
    [v6 handleRecentContact:v7];
  }

  return 0;
}

void __48___ICPortraitLexiconSource__makeContactDelegate__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 1);
    [v2 completeRecentContacts];

    WeakRetained = v3;
  }
}

uint64_t __52___ICPortraitLexiconSource__makeNamedEntityDelegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 1);
    [v3 setupNamedEntities];
  }

  return 0;
}

uint64_t __52___ICPortraitLexiconSource__makeNamedEntityDelegate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(WeakRetained + 1);
    v7 = [_ICPortraitUtilities namedEntityRecordFromPortraitNamedEntityRecord:v3];
    [v6 handleNamedEntity:v7];
  }

  return 0;
}

void __52___ICPortraitLexiconSource__makeNamedEntityDelegate__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 1);
    [v2 completeNamedEntities];

    WeakRetained = v3;
  }
}

uint64_t __52___ICPortraitLexiconSource__makeNamedEntityDelegate__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 1);
    [v3 setupRecentNamedEntities];
  }

  return 0;
}

uint64_t __52___ICPortraitLexiconSource__makeNamedEntityDelegate__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(WeakRetained + 1);
    v7 = [_ICPortraitUtilities namedEntityRecordFromPortraitNamedEntityRecord:v3];
    [v6 handleRecentNamedEntity:v7];
  }

  return 0;
}

void __52___ICPortraitLexiconSource__makeNamedEntityDelegate__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 1);
    [v2 completeRecentNamedEntities];

    WeakRetained = v3;
  }
}

void __52___ICPortraitLexiconSource__makeNamedEntityDelegate__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 1);
    [v2 resetNamedEntities];

    WeakRetained = v3;
  }
}

@end