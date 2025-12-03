@interface _CPUIAlbumContainer
- (CGSize)intrinsicContentSize;
- (CPUIModernButton)button;
- (_CPUIAlbumContainer)initWithButton:(id)button;
@end

@implementation _CPUIAlbumContainer

- (_CPUIAlbumContainer)initWithButton:(id)button
{
  v28[4] = *MEMORY[0x277D85DE8];
  buttonCopy = button;
  v27.receiver = self;
  v27.super_class = _CPUIAlbumContainer;
  v5 = [(_CPUIAlbumContainer *)&v27 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    [(_CPUIAlbumContainer *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_CPUIAlbumContainer *)v6 addSubview:buttonCopy];
    v7 = objc_storeWeak(&v6->_button, buttonCopy);
    v20 = MEMORY[0x277CCAAD0];
    v8 = v7;
    leadingAnchor = [buttonCopy leadingAnchor];
    leadingAnchor2 = [(_CPUIAlbumContainer *)v6 leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v28[0] = v24;
    WeakRetained = objc_loadWeakRetained(&v6->_button);
    trailingAnchor = [WeakRetained trailingAnchor];
    trailingAnchor2 = [(_CPUIAlbumContainer *)v6 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v28[1] = v19;
    v18 = objc_loadWeakRetained(&v6->_button);
    bottomAnchor = [v18 bottomAnchor];
    bottomAnchor2 = [(_CPUIAlbumContainer *)v6 bottomAnchor];
    v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v28[2] = v11;
    v12 = objc_loadWeakRetained(&v6->_button);
    topAnchor = [v12 topAnchor];
    topAnchor2 = [(_CPUIAlbumContainer *)v6 topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v28[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
    [v20 activateConstraints:v16];
  }

  return v6;
}

- (CGSize)intrinsicContentSize
{
  button = [(_CPUIAlbumContainer *)self button];
  [button intrinsicContentSize];
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