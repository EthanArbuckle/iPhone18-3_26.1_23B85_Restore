@interface _HKDocumentImageView
- (_HKDocumentImageView)initWithImage:(id)a3;
@end

@implementation _HKDocumentImageView

- (_HKDocumentImageView)initWithImage:(id)a3
{
  v32[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = _HKDocumentImageView;
  v5 = [(_HKDocumentImageView *)&v31 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(_HKDocumentImageView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v4];
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
    v29 = [(_HKDocumentImageView *)v6 imageView];
    v28 = [v29 leadingAnchor];
    v27 = [(_HKDocumentImageView *)v6 leadingAnchor];
    v26 = [v28 constraintEqualToAnchor:v27 constant:4.0];
    v32[0] = v26;
    v25 = [(_HKDocumentImageView *)v6 imageView];
    v24 = [v25 trailingAnchor];
    v22 = [(_HKDocumentImageView *)v6 trailingAnchor];
    v21 = [v24 constraintEqualToAnchor:v22 constant:-4.0];
    v32[1] = v21;
    v11 = [(_HKDocumentImageView *)v6 imageView];
    [v11 topAnchor];
    v12 = v30 = v4;
    v13 = [(_HKDocumentImageView *)v6 topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v32[2] = v14;
    v15 = [(_HKDocumentImageView *)v6 imageView];
    v16 = [v15 bottomAnchor];
    v17 = [(_HKDocumentImageView *)v6 bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v32[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
    [v23 activateConstraints:v19];

    v4 = v30;
  }

  return v6;
}

@end