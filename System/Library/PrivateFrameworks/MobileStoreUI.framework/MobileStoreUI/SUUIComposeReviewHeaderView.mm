@interface SUUIComposeReviewHeaderView
- (SUUIComposeReviewHeaderDelegate)delegate;
- (SUUIComposeReviewHeaderView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (id)textFieldList:(id)list configurationForFieldAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setReview:(id)review;
- (void)sizeToFit;
- (void)textFieldListValidityDidChange:(id)change;
- (void)textFieldListValuesDidChange:(id)change;
@end

@implementation SUUIComposeReviewHeaderView

- (SUUIComposeReviewHeaderView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v22.receiver = self;
  v22.super_class = SUUIComposeReviewHeaderView;
  v5 = [(SUUIComposeReviewHeaderView *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_style = style;
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"star"];
    v8 = [MEMORY[0x277D755B8] systemImageNamed:@"star.fill"];
    v9 = SKGetRatingStarsImage();
    v10 = SKGetRatingStarsImage();
    v11 = [v9 imageWithRenderingMode:2];

    v12 = [v10 imageWithRenderingMode:2];

    v13 = [objc_alloc(MEMORY[0x277CDD398]) initWithBackgroundImage:v11 foregroundImage:v12];
    ratingControl = v6->_ratingControl;
    v6->_ratingControl = v13;

    v15 = v6->_ratingControl;
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"RATING_EXPLANATION" value:&stru_286AECDE0 table:0];
    [(SKStarRatingControl *)v15 setExplanationText:v17];

    [(SKStarRatingControl *)v6->_ratingControl setStarWidth:27.5];
    [(SKStarRatingControl *)v6->_ratingControl setHitPadding:70.0, 3.0];
    [(SKStarRatingControl *)v6->_ratingControl sizeToFit];
    [(SUUIComposeReviewHeaderView *)v6 addSubview:v6->_ratingControl];
    v18 = [SUUIComposeTextFieldListView alloc];
    v19 = [(SUUIComposeTextFieldListView *)v18 initWithFrame:v6->_style style:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    textFieldListView = v6->_textFieldListView;
    v6->_textFieldListView = v19;

    [(SUUIComposeTextFieldListView *)v6->_textFieldListView setDelegate:v6];
    [(SUUIComposeTextFieldListView *)v6->_textFieldListView reloadData];
    [(SUUIComposeReviewHeaderView *)v6 addSubview:v6->_textFieldListView];
  }

  return v6;
}

- (void)dealloc
{
  [(SUUIComposeTextFieldListView *)self->_textFieldListView setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIComposeReviewHeaderView;
  [(SUUIComposeReviewHeaderView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  [(SUUIComposeReviewHeaderView *)self bounds];
  v4 = v3;
  [(SKStarRatingControl *)self->_ratingControl frame];
  v6 = (v4 - v5) * 0.5;
  [(SKStarRatingControl *)self->_ratingControl setFrame:floorf(v6), 5.0];
  [(SUUIComposeTextFieldListView *)self->_textFieldListView frame];
  v8 = v7;
  [(SUUIComposeTextFieldListView *)self->_textFieldListView height];
  textFieldListView = self->_textFieldListView;

  [(SUUIComposeTextFieldListView *)textFieldListView setFrame:v8, 44.0, v4, v9];
}

- (void)sizeToFit
{
  [(SUUIComposeReviewHeaderView *)self frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(SUUIComposeTextFieldListView *)self->_textFieldListView height];

  [(SUUIComposeReviewHeaderView *)self setFrame:v4, v6, v8, v9 + 44.0];
}

- (void)setReview:(id)review
{
  reviewCopy = review;
  review = self->_review;
  v8 = reviewCopy;
  if (review != reviewCopy)
  {
    objc_storeStrong(&self->_review, review);
    review = self->_review;
  }

  ratingControl = self->_ratingControl;
  [(SUUIReviewMetadata *)review rating];
  [(SKStarRatingControl *)ratingControl setValue:?];
  [(SUUIComposeTextFieldListView *)self->_textFieldListView reloadData];
}

- (id)textFieldList:(id)list configurationForFieldAtIndex:(unint64_t)index
{
  v6 = objc_alloc_init(SUUIComposeTextFieldConfiguration);
  if (!index)
  {
    style = self->_style;
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = v8;
    if (style == 1)
    {
      v10 = [v8 localizedStringForKey:@"SUBJECT_LABEL" value:&stru_286AECDE0 table:0];
      [(SUUIComposeTextFieldConfiguration *)v6 setLabel:v10];
    }

    else
    {
      v10 = [v8 localizedStringForKey:@"SUBJECT_PLACEHOLDER" value:&stru_286AECDE0 table:0];
      [(SUUIComposeTextFieldConfiguration *)v6 setPlaceholder:v10];
    }

    [(SUUIComposeTextFieldConfiguration *)v6 setMaxLength:[(SUUIReviewMetadata *)self->_review titleMaxLength]];
    title = [(SUUIReviewMetadata *)self->_review title];
    [(SUUIComposeTextFieldConfiguration *)v6 setValue:title];
  }

  return v6;
}

- (void)textFieldListValidityDidChange:(id)change
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeHeaderViewValidityDidChange:self];
}

- (void)textFieldListValuesDidChange:(id)change
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeHeaderViewValuesDidChange:self];
}

- (SUUIComposeReviewHeaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end