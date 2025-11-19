@interface CKAutomaticTranslationIndicatorChatItem
- (BOOL)languagesAreDownloading;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (CKAutomaticTranslationIndicatorChatItem)init;
- (Class)cellClass;
- (IMAutomaticTranslationIndicatorChatItem)imAutomaticTranslationIndicatorChatItem;
- (NSAttributedString)buttonAttributedText;
- (NSAttributedString)titleAttributedText;
- (NSLocale)localizedTranslationLanguage;
- (id)incomingTranslationButtonText;
- (id)incomingTranslationTranscriptTextFor:(id)a3;
- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7;
- (id)loadButtonTitleText;
- (id)loadTranscriptText;
- (id)translationEnabledButtonText;
- (id)translationEnabledTranscriptText;
@end

@implementation CKAutomaticTranslationIndicatorChatItem

- (NSAttributedString)buttonAttributedText
{
  v2 = [(CKAutomaticTranslationIndicatorChatItem *)self loadButtonTitleText];

  return v2;
}

- (NSAttributedString)titleAttributedText
{
  v2 = [(CKAutomaticTranslationIndicatorChatItem *)self loadTranscriptText];

  return v2;
}

- (IMAutomaticTranslationIndicatorChatItem)imAutomaticTranslationIndicatorChatItem
{
  v2 = self;
  result = [(CKChatItem *)v2 IMChatItem];
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

- (id)layoutItemSpacingWithEnvironment:(id)a3 datasourceItemIndex:(int64_t)a4 allDatasourceItems:(id)a5 supplementryItems:(id)a6 sizeOverride:(CGSize)a7
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5D9E0);
  v10 = sub_190D57180();
  v11 = a3;
  v12 = self;
  v13 = sub_190B1E714(a4, v10);

  return v13;
}

- (NSLocale)localizedTranslationLanguage
{
  v3 = sub_190D519C0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  v8 = [(CKAutomaticTranslationIndicatorChatItem *)v7 imAutomaticTranslationIndicatorChatItem];
  v9 = [(IMAutomaticTranslationIndicatorChatItem *)v8 translationLanguageCode];

  if (v9)
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
  v2 = self;
  v3 = CKAutomaticTranslationIndicatorChatItem.loadTranscriptText()();

  return v3;
}

- (id)loadButtonTitleText
{
  v2 = self;
  v3 = sub_190B1D1F8();

  return v3;
}

- (id)incomingTranslationTranscriptTextFor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190B1E920(v4);

  v6 = sub_190D56ED0();

  return v6;
}

- (id)translationEnabledTranscriptText
{
  v2 = self;
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
  v2 = self;
  v3 = [(CKAutomaticTranslationIndicatorChatItem *)v2 imAutomaticTranslationIndicatorChatItem];
  v4 = [(IMAutomaticTranslationIndicatorChatItem *)v3 translationLanguageStatus];

  if (v4 == 2)
  {

    return 1;
  }

  else
  {
    v6 = [(CKAutomaticTranslationIndicatorChatItem *)v2 imAutomaticTranslationIndicatorChatItem];
    v7 = [(IMAutomaticTranslationIndicatorChatItem *)v6 userTranslationLanguageStatus];

    return v7 == 2;
  }
}

- (id)translationEnabledButtonText
{
  v2 = self;
  v3 = sub_190B1D86C();

  return v3;
}

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  CKAutomaticTranslationIndicatorChatItem.loadSizeThatFits(_:textAlignmentInsets:)(a4, width, height);
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