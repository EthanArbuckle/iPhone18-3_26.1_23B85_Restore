@interface MNJunctionViewImageLoader
- (MNJunctionViewImageLoader)init;
- (id)_imagesForRequest:(id)a3 response:(id)a4;
- (id)_stringForImageIDs:(id)a3;
- (void)_imagesForIDs:(id)a3 handler:(id)a4;
- (void)imagesForJunctionView:(id)a3 eventID:(id)a4 handler:(id)a5;
- (void)setJunctionViewEvents:(id)a3;
- (void)setJunctionViewImageWidth:(double)a3 height:(double)a4;
- (void)updateForLocation:(id)a3 remainingDistanceOnRoute:(double)a4;
@end

@implementation MNJunctionViewImageLoader

- (id)_stringForImageIDs:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AD60] string];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v5 firstObject];
        if (v10 == v11)
        {
          v12 = @"%llu";
        }

        else
        {
          v12 = @", %llu";
        }

        v13 = v12;

        [v4 appendFormat:v13, objc_msgSend(v10, "_navigation_unsignedIntegerValue")];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_imagesForRequest:(id)a3 response:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "imagesCount")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = [v6 images];
  v9 = [v8 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v40;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        v14 = [v13 imageId];
        [v7 setObject:v13 forKeyedSubscript:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v10);
  }

  v33 = v6;
  v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "imagesCount")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v34 = v5;
  v16 = [v5 imageIds];
  v17 = [v16 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v36;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v35 + 1) + 8 * j);
        v22 = [v7 objectForKeyedSubscript:v21];
        if (v22)
        {
          v23 = objc_alloc_init(MNGuidanceJunctionViewImage);
          v24 = [v22 imageId];
          -[MNGuidanceJunctionViewImage setImageID:](v23, "setImageID:", [v24 _navigation_unsignedIntegerValue]);

          v25 = [v22 image];
          [(MNGuidanceJunctionViewImage *)v23 setImageData:v25];

          [v15 addObject:v23];
        }

        else
        {
          v23 = GEOFindOrCreateLog();
          if (os_log_type_enabled(&v23->super, OS_LOG_TYPE_ERROR))
          {
            v26 = [v21 _navigation_unsignedIntegerValue];
            *buf = 134217984;
            v44 = v26;
            _os_log_impl(&dword_1D311E000, &v23->super, OS_LOG_TYPE_ERROR, "Requested junction view image (%llu) was not found in response", buf, 0xCu);
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v18);
  }

  v27 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = [v34 imageIds];
    v29 = [(MNJunctionViewImageLoader *)self _stringForImageIDs:v28];
    *buf = 134218242;
    v44 = v34;
    v45 = 2112;
    v46 = v29;
    _os_log_impl(&dword_1D311E000, v27, OS_LOG_TYPE_INFO, "Received junction view images (%p) for IDs: %@", buf, 0x16u);
  }

  v30 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)_imagesForIDs:(id)a3 handler:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E69A1E00]);
  v9 = [v6 mutableCopy];
  [v8 setImageIds:v9];

  [v8 setWidth:self->_imageWidth];
  [v8 setHeight:self->_imageHeight];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__MNJunctionViewImageLoader__imagesForIDs_handler___block_invoke;
  aBlock[3] = &unk_1E842B360;
  objc_copyWeak(&v31, &location);
  v10 = v8;
  v29 = v10;
  v11 = v7;
  v30 = v11;
  v12 = _Block_copy(aBlock);
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __51__MNJunctionViewImageLoader__imagesForIDs_handler___block_invoke_2;
  v26 = &unk_1E842FA40;
  v13 = v10;
  v27 = v13;
  v14 = _Block_copy(&v23);
  v15 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v13 width];
    v17 = [v13 height];
    v18 = [(MNJunctionViewImageLoader *)self _stringForImageIDs:v6];
    *buf = 134218754;
    v34 = v13;
    v35 = 1024;
    v36 = v16;
    v37 = 1024;
    v38 = v17;
    v39 = 2112;
    v40 = v18;
    _os_log_impl(&dword_1D311E000, v15, OS_LOG_TYPE_INFO, "Requesting junction view images (%p) [%u x %u] for IDs: %@", buf, 0x22u);
  }

  v19 = [MEMORY[0x1E69A1E08] sharedRequester];
  v20 = MEMORY[0x1E69E96A0];
  v21 = MEMORY[0x1E69E96A0];
  [v19 startImageServiceRequest:v13 auditToken:0 throttleToken:0 queue:v20 finished:v12 networkActivity:0 error:{v14, v23, v24, v25, v26}];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);

  v22 = *MEMORY[0x1E69E9840];
}

void __51__MNJunctionViewImageLoader__imagesForIDs_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained _imagesForRequest:*(a1 + 32) response:v3];

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

void __51__MNJunctionViewImageLoader__imagesForIDs_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v7 = 134218243;
    v8 = v5;
    v9 = 2113;
    v10 = v3;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_ERROR, "Error requesting junction images for request (%p): %{private}@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)imagesForJunctionView:(id)a3 eventID:(id)a4 handler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 imageIds];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__MNJunctionViewImageLoader_imagesForJunctionView_eventID_handler___block_invoke;
  v13[3] = &unk_1E842B338;
  v14 = v8;
  v15 = v9;
  v11 = v8;
  v12 = v9;
  [(MNJunctionViewImageLoader *)self _imagesForIDs:v10 handler:v13];
}

void __67__MNJunctionViewImageLoader_imagesForJunctionView_eventID_handler___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v3 = a2;
    v4 = [[MNGuidanceJunctionViewInfo alloc] initWithID:*(a1 + 32) images:v3];

    (*(*(a1 + 40) + 16))();
  }
}

- (void)updateForLocation:(id)a3 remainingDistanceOnRoute:(double)a4
{
  v33 = *MEMORY[0x1E69E9840];
  GEOConfigGetDouble();
  v7 = v6;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = self->_preloadEvents;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v25;
    *&v10 = 134218240;
    v23 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        if ([v14 needsPreload])
        {
          v15 = [v14 junctionViewEvent];
          [v15 endValidDistance];
          if (v16 > a4)
          {
            goto LABEL_12;
          }

          [v15 startValidDistance];
          v18 = v17 + v7;
          if (v17 + v7 >= a4)
          {
            v19 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = v23;
              v29 = a4;
              v30 = 2048;
              v31 = v18;
              _os_log_impl(&dword_1D311E000, v19, OS_LOG_TYPE_INFO, "Preloading junction view images | remainingDistance: %0.1f | preloadDistance: %0.1f", buf, 0x16u);
            }

            v20 = [v15 junctionView];
            v21 = [v15 uniqueID];
            [(MNJunctionViewImageLoader *)self imagesForJunctionView:v20 eventID:v21 handler:0];

LABEL_12:
            [v14 setNeedsPreload:0];
          }

          continue;
        }
      }

      v11 = [(NSArray *)v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v11);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)setJunctionViewImageWidth:(double)a3 height:(double)a4
{
  v23 = *MEMORY[0x1E69E9840];
  if (vabdd_f64(self->_imageWidth, a3) >= 0.000001 || vabdd_f64(self->_imageHeight, a4) >= 0.000001)
  {
    self->_imageWidth = a3;
    self->_imageHeight = a4;
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v20 = a3;
      v21 = 2048;
      v22 = a4;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "Setting desired junction view image size to [%g x %g]", buf, 0x16u);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = self->_preloadEvents;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v14 + 1) + 8 * i) setNeedsPreload:{1, v14}];
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setJunctionViewEvents:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v41;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v40 + 1) + 8 * i);
        if ([v11 hasJunctionView])
        {
          [v11 startValidDistance];
          if (v12 > 0.0)
          {
            v13 = objc_alloc_init(_MNJunctionViewPreloadEvent);
            [(_MNJunctionViewPreloadEvent *)v13 setJunctionViewEvent:v11];
            [(_MNJunctionViewPreloadEvent *)v13 setNeedsPreload:1];
            [v5 addObject:v13];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v8);
  }

  [v5 sortUsingComparator:&__block_literal_global_5922];
  objc_storeStrong(&self->_preloadEvents, v5);
  v14 = GEOFindOrCreateLog();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);

  if (v15)
  {
    v31 = v6;
    v32 = v5;
    v16 = [MEMORY[0x1E696AD60] stringWithFormat:@"Setting %d event(s) to preload:\n", -[NSArray count](self->_preloadEvents, "count")];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v35 = self;
    obj = self->_preloadEvents;
    v17 = [(NSArray *)obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v17)
    {
      v18 = v17;
      v34 = *v37;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v37 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v36 + 1) + 8 * j);
          v21 = [v20 junctionViewEvent];
          v22 = [v21 uniqueID];
          [v21 startValidDistance];
          v24 = v23;
          v25 = [v21 junctionView];
          v26 = [v25 imageIds];
          v27 = [(MNJunctionViewImageLoader *)v35 _stringForImageIDs:v26];
          [v16 appendFormat:@"\t%@ | startDistance: %0.1f | images: (%@)", v22, v24, v27];

          v28 = [(NSArray *)v35->_preloadEvents lastObject];

          if (v20 != v28)
          {
            [v16 appendFormat:@"\n"];
          }
        }

        v18 = [(NSArray *)obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v18);
    }

    v29 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v45 = v16;
      _os_log_impl(&dword_1D311E000, v29, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v6 = v31;
    v5 = v32;
  }

  v30 = *MEMORY[0x1E69E9840];
}

uint64_t __51__MNJunctionViewImageLoader_setJunctionViewEvents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [a2 junctionViewEvent];
  [v6 startValidDistance];
  v7 = [v4 numberWithDouble:?];
  v8 = MEMORY[0x1E696AD98];
  v9 = [v5 junctionViewEvent];

  [v9 startValidDistance];
  v10 = [v8 numberWithDouble:?];
  v11 = [v7 compare:v10];

  return v11;
}

- (MNJunctionViewImageLoader)init
{
  v6.receiver = self;
  v6.super_class = MNJunctionViewImageLoader;
  v2 = [(MNJunctionViewImageLoader *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69A2398] sharedPlatform];
    v2->_imageWidth = [v3 deviceScreenWidthInPixels];
    v2->_imageHeight = [v3 deviceScreenHeightInPixels];
    v4 = v2;
  }

  return v2;
}

@end