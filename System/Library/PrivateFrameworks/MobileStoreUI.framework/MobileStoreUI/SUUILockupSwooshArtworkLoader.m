@interface SUUILockupSwooshArtworkLoader
- (BOOL)loadImageForItem:(id)a3 reason:(int64_t)a4;
- (BOOL)loadImageForVideo:(id)a3 reason:(int64_t)a4;
- (SUUILockupSwooshArtworkLoader)initWithArtworkLoader:(id)a3 swoosh:(id)a4;
- (id)placeholderImageForItem:(id)a3;
- (id)placeholderImageForVideo:(id)a3;
- (void)loadImagesForNextPageWithReason:(int64_t)a3;
- (void)setImage:(id)a3 forRequest:(id)a4;
@end

@implementation SUUILockupSwooshArtworkLoader

- (SUUILockupSwooshArtworkLoader)initWithArtworkLoader:(id)a3 swoosh:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = SUUILockupSwooshArtworkLoader;
  v7 = [(SUUISwooshArtworkLoader *)&v13 initWithArtworkLoader:a3 swoosh:v6];
  if (v7)
  {
    v8 = [v6 artworkContext];
    context = v7->_context;
    v7->_context = v8;

    v10 = [v6 videoImageConsumer];
    videoImageConsumer = v7->_videoImageConsumer;
    v7->_videoImageConsumer = v10;
  }

  return v7;
}

- (BOOL)loadImageForItem:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = [(SUUIItemArtworkContext *)self->_context URLForItem:v6];
  if (v7)
  {
    v8 = objc_alloc_init(SUUIArtworkRequest);
    v9 = [(SUUIItemArtworkContext *)self->_context dataConsumerForItem:v6];
    [(SUUIArtworkRequest *)v8 setDataConsumer:v9];

    [(SUUIArtworkRequest *)v8 setURL:v7];
    v10 = [(SUUISwooshArtworkLoader *)self loadImageForObject:v6 artworkRequest:v8 reason:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)loadImageForVideo:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  [(SUUIVideoImageDataConsumer *)self->_videoImageConsumer landscapeSize];
  v8 = v7;
  v10 = v9;
  v11 = [v6 artworks];
  v12 = [v11 bestArtworkForScaledSize:{v8, v10}];
  v13 = [v12 URL];

  if (v13)
  {
    v14 = objc_alloc_init(SUUIArtworkRequest);
    [(SUUIArtworkRequest *)v14 setDataConsumer:self->_videoImageConsumer];
    [(SUUIArtworkRequest *)v14 setURL:v13];
    v15 = [(SUUISwooshArtworkLoader *)self loadImageForObject:v6 artworkRequest:v14 reason:a4];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)placeholderImageForItem:(id)a3
{
  v4 = a3;
  v5 = [(SUUISwooshArtworkLoader *)self swooshViewController];
  v6 = [v5 artworkContext];
  v7 = [v6 placeholderImageForItem:v4];

  return v7;
}

- (id)placeholderImageForVideo:(id)a3
{
  videoPlaceholderImage = self->_videoPlaceholderImage;
  if (!videoPlaceholderImage)
  {
    v5 = [(SUUIVideoImageDataConsumer *)self->_videoImageConsumer imageForColor:0 orientation:2];
    v6 = self->_videoPlaceholderImage;
    self->_videoPlaceholderImage = v5;

    videoPlaceholderImage = self->_videoPlaceholderImage;
  }

  return videoPlaceholderImage;
}

- (void)loadImagesForNextPageWithReason:(int64_t)a3
{
  v5 = [(SUUISwooshArtworkLoader *)self swooshViewController];
  v15 = [v5 lockups];

  v6 = [v15 count];
  if (v6 >= 1)
  {
    v7 = v6;
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = [v15 objectAtIndex:v9 - 1];
      v11 = [v10 item];
      if (v11)
      {
        v12 = [(SUUILockupSwooshArtworkLoader *)self loadImageForItem:v11 reason:a3];
        v13 = [v11 videos];
        v14 = [v13 firstObject];

        if (v14)
        {
          [(SUUILockupSwooshArtworkLoader *)self loadImageForVideo:v14 reason:a3];
        }

        v8 += v12;
      }

      if (v9 >= v7)
      {
        break;
      }

      ++v9;
    }

    while (v8 < 7);
  }
}

- (void)setImage:(id)a3 forRequest:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v20 = a4;
  v7 = [v20 requestIdentifier];
  v8 = [(SUUISwooshArtworkLoader *)self swooshViewController];
  v22 = [v8 lockups];
  [v8 indexPathsForVisibleItems];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v27 = 0u;
  v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    v18 = v8;
    v19 = v6;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v22 objectAtIndex:{objc_msgSend(v13, "item")}];
        v15 = [v14 item];
        if (v15)
        {
          if ([(SUUISwooshArtworkLoader *)self artworkRequestIdentifierForObject:v15]== v7)
          {
            v8 = v18;
            v6 = v19;
            [v18 setImage:v19 forItemAtIndex:{objc_msgSend(v13, "item")}];
LABEL_16:

            goto LABEL_17;
          }

          v16 = [v15 videos];
          v17 = [v16 firstObject];

          if (v17 && [(SUUISwooshArtworkLoader *)self artworkRequestIdentifierForObject:v17]== v7)
          {
            v8 = v18;
            v6 = v19;
            [v18 setVideoThumbnail:v19 forItemAtIndex:{objc_msgSend(v13, "item")}];

            goto LABEL_16;
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      v8 = v18;
      v6 = v19;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v23.receiver = self;
  v23.super_class = SUUILockupSwooshArtworkLoader;
  [(SUUISwooshArtworkLoader *)&v23 setImage:v6 forRequest:v20];
}

@end