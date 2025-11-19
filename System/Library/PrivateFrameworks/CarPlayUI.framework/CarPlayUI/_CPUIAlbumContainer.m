@interface _CPUIAlbumContainer
- (CGSize)intrinsicContentSize;
- (CPUIModernButton)button;
- (_CPUIAlbumContainer)initWithButton:(id)a3;
@end

@implementation _CPUIAlbumContainer

- (_CPUIAlbumContainer)initWithButton:(id)a3
{
  v28[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = _CPUIAlbumContainer;
  v5 = [(_CPUIAlbumContainer *)&v27 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    [(_CPUIAlbumContainer *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_CPUIAlbumContainer *)v6 addSubview:v4];
    v7 = objc_storeWeak(&v6->_button, v4);
    v20 = MEMORY[0x277CCAAD0];
    v8 = v7;
    v26 = [v4 leadingAnchor];
    v25 = [(_CPUIAlbumContainer *)v6 leadingAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v28[0] = v24;
    WeakRetained = objc_loadWeakRetained(&v6->_button);
    v22 = [WeakRetained trailingAnchor];
    v21 = [(_CPUIAlbumContainer *)v6 trailingAnchor];
    v19 = [v22 constraintEqualToAnchor:v21];
    v28[1] = v19;
    v18 = objc_loadWeakRetained(&v6->_button);
    v9 = [v18 bottomAnchor];
    v10 = [(_CPUIAlbumContainer *)v6 bottomAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v28[2] = v11;
    v12 = objc_loadWeakRetained(&v6->_button);
    v13 = [v12 topAnchor];
    v14 = [(_CPUIAlbumContainer *)v6 topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v28[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
    [v20 activateConstraints:v16];
  }

  return v6;
}

- (CGSize)intrinsicContentSize
{
  v2 = [(_CPUIAlbumContainer *)self button];
  [v2 intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CPUIModernButton)button
{
  WeakRetained = objc_loadWeakRetained(&self->_button);

  return WeakRetained;
}

@end