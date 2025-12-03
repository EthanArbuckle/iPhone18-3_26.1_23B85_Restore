@interface _HKDocumentImageView
- (_HKDocumentImageView)initWithImage:(id)image;
@end

@implementation _HKDocumentImageView

- (_HKDocumentImageView)initWithImage:(id)image
{
  v32[4] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v31.receiver = self;
  v31.super_class = _HKDocumentImageView;
  v5 = [(_HKDocumentImageView *)&v31 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(_HKDocumentImageView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:imageCopy];
    imageView = v6->_imageView;
    v6->_imageView = v7;

    [(UIImageView *)v6->_imageView setContentMode:1];
    [(UIImageView *)v6->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_HKDocumentImageView *)v6 addSubview:v6->_imageView];
    LODWORD(v9) = 1148846080;
    [(_HKDocumentImageView *)v6 setContentHuggingPriority:0 forAxis:v9];
    LODWORD(v10) = 1148846080;
    [(_HKDocumentImageView *)v6 setContentCompressionResistancePriority:0 forAxis:v10];
    v23 = MEMORY[0x1E696ACD8];
    imageView = [(_HKDocumentImageView *)v6 imageView];
    leadingAnchor = [imageView leadingAnchor];
    leadingAnchor2 = [(_HKDocumentImageView *)v6 leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:4.0];
    v32[0] = v26;
    imageView2 = [(_HKDocumentImageView *)v6 imageView];
    trailingAnchor = [imageView2 trailingAnchor];
    trailingAnchor2 = [(_HKDocumentImageView *)v6 trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-4.0];
    v32[1] = v21;
    imageView3 = [(_HKDocumentImageView *)v6 imageView];
    [imageView3 topAnchor];
    v12 = v30 = imageCopy;
    topAnchor = [(_HKDocumentImageView *)v6 topAnchor];
    v14 = [v12 constraintEqualToAnchor:topAnchor];
    v32[2] = v14;
    imageView4 = [(_HKDocumentImageView *)v6 imageView];
    bottomAnchor = [imageView4 bottomAnchor];
    bottomAnchor2 = [(_HKDocumentImageView *)v6 bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v32[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
    [v23 activateConstraints:v19];

    imageCopy = v30;
  }

  return v6;
}

@end