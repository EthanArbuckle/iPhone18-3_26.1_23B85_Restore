@interface CKAutomaticTranslationIndicatorChatItem
- (BOOL)languagesAreDownloading;
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (CKAutomaticTranslationIndicatorChatItem)init;
- (Class)cellClass;
- (IMAutomaticTranslationIndicatorChatItem)imAutomaticTranslationIndicatorChatItem;
- (NSAttributedString)buttonAttributedText;
- (NSAttributedString)titleAttributedText;
- (NSLocale)localizedTranslationLanguage;
- (id)incomingTranslationButtonText;
- (id)incomingTranslationTranscriptTextFor:(id)for;
- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override;
- (id)loadButtonTitleText;
- (id)loadTranscriptText;
- (id)translationEnabledButtonText;
- (id)translationEnabledTranscriptText;
@end

@implementation CKAutomaticTranslationIndicatorChatItem

- (NSAttributedString)buttonAttributedText
{
  loadButtonTitleText = [(CKAutomaticTranslationIndicatorChatItem *)self loadButtonTitleText];

  return loadButtonTitleText;
}

- (NSAttributedString)titleAttributedText
{
  loadTranscriptText = [(CKAutomaticTranslationIndicatorChatItem *)self loadTranscriptText];

  return loadTranscriptText;
}

- (IMAutomaticTranslationIndicatorChatItem)imAutomaticTranslationIndicatorChatItem
{
  selfCopy = self;
  result = [(CKChatItem *)selfCopy IMChatItem];
  if (result)
  {

    objc_opt_self();
    v4 = swift_dynamicCastObjCClassUnconditional();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (Class)cellClass
{
  type metadata accessor for CKAutomaticTranslationIndicatorCell(0);

  return swift_getObjCClassFromMetadata();
}

- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5D9E0);
  v10 = sub_190D57180();
  environmentCopy = environment;
  selfCopy = self;
  v13 = sub_190B1E714(index, v10);

  return v13;
}

- (NSLocale)localizedTranslationLanguage
{
  v3 = sub_190D519C0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  imAutomaticTranslationIndicatorChatItem = [(CKAutomaticTranslationIndicatorChatItem *)selfCopy imAutomaticTranslationIndicatorChatItem];
  translationLanguageCode = [(IMAutomaticTranslationIndicatorChatItem *)imAutomaticTranslationIndicatorChatItem translationLanguageCode];

  if (translationLanguageCode)
  {
    sub_190D56F10();

    sub_190D518B0();
    v10 = sub_190D51940();
    (*(v4 + 8))(v6, v3);
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

- (id)loadTranscriptText
{
  selfCopy = self;
  v3 = CKAutomaticTranslationIndicatorChatItem.loadTranscriptText()();

  return v3;
}

- (id)loadButtonTitleText
{
  selfCopy = self;
  v3 = sub_190B1D1F8();

  return v3;
}

- (id)incomingTranslationTranscriptTextFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_190B1E920(forCopy);

  v6 = sub_190D56ED0();

  return v6;
}

- (id)translationEnabledTranscriptText
{
  selfCopy = self;
  sub_190B1D4B0();
  v4 = v3;

  if (v4)
  {
    v5 = sub_190D56ED0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)incomingTranslationButtonText
{
  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    if (!v6)
    {
      sub_190D56F10();
      v6 = sub_190D56ED0();
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)languagesAreDownloading
{
  selfCopy = self;
  imAutomaticTranslationIndicatorChatItem = [(CKAutomaticTranslationIndicatorChatItem *)selfCopy imAutomaticTranslationIndicatorChatItem];
  translationLanguageStatus = [(IMAutomaticTranslationIndicatorChatItem *)imAutomaticTranslationIndicatorChatItem translationLanguageStatus];

  if (translationLanguageStatus == 2)
  {

    return 1;
  }

  else
  {
    imAutomaticTranslationIndicatorChatItem2 = [(CKAutomaticTranslationIndicatorChatItem *)selfCopy imAutomaticTranslationIndicatorChatItem];
    userTranslationLanguageStatus = [(IMAutomaticTranslationIndicatorChatItem *)imAutomaticTranslationIndicatorChatItem2 userTranslationLanguageStatus];

    return userTranslationLanguageStatus == 2;
  }
}

- (id)translationEnabledButtonText
{
  selfCopy = self;
  v3 = sub_190B1D86C();

  return v3;
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  CKAutomaticTranslationIndicatorChatItem.loadSizeThatFits(_:textAlignmentInsets:)(insets, width, height);
  v9 = v8;

  v10 = 0.0;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CKAutomaticTranslationIndicatorChatItem)init
{
  *(&self->super.super.isa + OBJC_IVAR___CKAutomaticTranslationIndicatorChatItem_languageDownloadProgress) = 0;
  v3.receiver = self;
  v3.super_class = CKAutomaticTranslationIndicatorChatItem;
  return [(CKAutomaticTranslationIndicatorChatItem *)&v3 init];
}

@end