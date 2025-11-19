@interface SUUIBrickSwooshArtworkLoader
- (BOOL)loadImageForBrick:(id)a3 reason:(int64_t)a4;
- (SUUIBrickSwooshArtworkLoader)initWithArtworkLoader:(id)a3 swoosh:(id)a4;
- (void)loadImagesForNextPageWithReason:(int64_t)a3;
- (void)setImage:(id)a3 forRequest:(id)a4;
@end

@implementation SUUIBrickSwooshArtworkLoader

- (SUUIBrickSwooshArtworkLoader)initWithArtworkLoader:(id)a3 swoosh:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = SUUIBrickSwooshArtworkLoader;
  v7 = [(SUUISwooshArtworkLoader *)&v16 initWithArtworkLoader:a3 swoosh:v6];
  if (v7)
  {
    v8 = +[SUUIStyledImageDataConsumer brickConsumer];
    v9 = [v6 colorScheme];
    v10 = [v9 backgroundColor];
    [v8 setBackgroundColor:v10];

    [(SUUISwooshArtworkLoader *)v7 setImageDataConsumer:v8];
    [v8 imageSize];
    v12 = v11;
    v13 = [MEMORY[0x277D759A0] mainScreen];
    [v13 scale];
    v7->_artworkSize = (v12 * v14);
  }

  return v7;
}

- (BOOL)loadImageForBrick:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 artwork];
  v8 = [v7 URL];

  if (v8)
  {
    v9 = [(SUUISwooshArtworkLoader *)self loadImageForObject:v6 URL:v8 reason:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)loadImagesForNextPageWithReason:(int64_t)a3
{
  v5 = [(SUUISwooshArtworkLoader *)self swooshViewController];
  v12 = [v5 bricks];

  v6 = [v12 count];
  if (v6 >= 1)
  {
    v7 = v6;
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = [v12 objectAtIndex:v9 - 1];
      v11 = [(SUUIBrickSwooshArtworkLoader *)self loadImageForBrick:v10 reason:a3];

      if (v9 >= v7)
      {
        break;
      }

      v8 += v11;
      ++v9;
    }

    while (v8 < 4);
  }
}

- (void)setImage:(id)a3 forRequest:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v19 = a4;
  v7 = [v19 requestIdentifier];
  v8 = [(SUUISwooshArtworkLoader *)self swooshViewController];
  v9 = [v8 bricks];
  [v8 indexPathsForVisibleItems];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v24 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    v18 = v6;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = [v9 objectAtIndex:{objc_msgSend(v15, "item", v18)}];
        if ([(SUUISwooshArtworkLoader *)self artworkRequestIdentifierForObject:v16]== v7)
        {
          v17 = [v15 item];
          v6 = v18;
          [v8 setImage:v18 forItemAtIndex:v17];

          goto LABEL_11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v6 = v18;
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v20.receiver = self;
  v20.super_class = SUUIBrickSwooshArtworkLoader;
  [(SUUISwooshArtworkLoader *)&v20 setImage:v6 forRequest:v19];
}

@end