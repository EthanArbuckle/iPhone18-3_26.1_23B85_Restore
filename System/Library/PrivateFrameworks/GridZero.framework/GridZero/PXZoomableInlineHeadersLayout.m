@interface PXZoomableInlineHeadersLayout
- (PXZoomableInlineHeadersLayout)initWithDataSourceManager:(id)a3;
- (PXZoomableInlineHeadersLayoutGeometrySource)geometrySource;
- (void)_updateSublayouts;
- (void)invalidateAnchorItemFrames;
- (void)invalidateGeometry;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setGeometrySource:(id)a3;
- (void)setSpec:(id)a3;
- (void)update;
@end

@implementation PXZoomableInlineHeadersLayout

- (void)update
{
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomableInlineHeadersLayout update]"];
      [v5 handleFailureInFunction:v6 file:@"PXZoomableInlineHeadersLayout.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXZoomableInlineHeadersLayout *)self _updateSublayouts];
      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (needsUpdate)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomableInlineHeadersLayout update]"];
      [v7 handleFailureInFunction:v8 file:@"PXZoomableInlineHeadersLayout.m" lineNumber:115 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v9.receiver = self;
  v9.super_class = PXZoomableInlineHeadersLayout;
  [(PXGSplitLayout *)&v9 update];
}

- (void)_updateSublayouts
{
  v3 = [(PXZoomableInlineHeadersLayout *)self dataSourceManager];
  v4 = [v3 yearsDataSource];
  [(PXInlineHeadersSpriteLayout *)self->_yearsLayout setDataSource:v4];

  v5 = [(PXZoomableInlineHeadersLayout *)self dataSourceManager];
  v6 = [v5 monthsDataSource];
  [(PXInlineHeadersSpriteLayout *)self->_monthsLayout setDataSource:v6];

  v7 = [(PXZoomableInlineHeadersLayout *)self spec];
  v8 = [v7 style];

  [(PXInlineHeadersSpriteLayout *)self->_yearsLayout setStyle:v8];
  monthsLayout = self->_monthsLayout;

  [(PXInlineHeadersSpriteLayout *)monthsLayout setStyle:v8];
}

- (PXZoomableInlineHeadersLayoutGeometrySource)geometrySource
{
  WeakRetained = objc_loadWeakRetained(&self->_geometrySource);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXCuratedLibraryInlineHeadersObserverContext != a5)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXZoomableInlineHeadersLayout.m" lineNumber:134 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_8:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        goto LABEL_9;
      }

LABEL_7:
      if (self->_updateFlags.updated)
      {
        v14 = [MEMORY[0x277CCA890] currentHandler];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomableInlineHeadersLayout observable:didChange:context:]"];
        [v14 handleFailureInFunction:v15 file:@"PXZoomableInlineHeadersLayout.m" lineNumber:131 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_8;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_7;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      v16 = v9;
      [(PXZoomableInlineHeadersLayout *)self setNeedsUpdate];
      v9 = v16;
    }
  }

LABEL_9:
}

- (void)invalidateGeometry
{
  [(PXInlineHeadersSpriteLayout *)self->_yearsLayout invalidateAnchorItemFrames];
  monthsLayout = self->_monthsLayout;

  [(PXInlineHeadersSpriteLayout *)monthsLayout invalidateAnchorItemFrames];
}

- (void)invalidateAnchorItemFrames
{
  [(PXInlineHeadersSpriteLayout *)self->_yearsLayout invalidateAnchorItemFrames];
  monthsLayout = self->_monthsLayout;

  [(PXInlineHeadersSpriteLayout *)monthsLayout invalidateAnchorItemFrames];
}

- (void)setSpec:(id)a3
{
  v5 = a3;
  if (self->_spec != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_spec, a3);
    [(PXInlineHeadersSpriteLayout *)self->_yearsLayout setSpec:v11];
    v5 = [(PXInlineHeadersSpriteLayout *)self->_monthsLayout setSpec:v11];
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        goto LABEL_8;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        v9 = [MEMORY[0x277CCA890] currentHandler];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomableInlineHeadersLayout setSpec:]"];
        [v9 handleFailureInFunction:v10 file:@"PXZoomableInlineHeadersLayout.m" lineNumber:79 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      v5 = [(PXZoomableInlineHeadersLayout *)self setNeedsUpdate];
    }
  }

LABEL_8:

  MEMORY[0x2821F9730](v5);
}

- (void)setGeometrySource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_geometrySource);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_geometrySource, obj);
    [(PXInlineHeadersSpriteLayout *)self->_yearsLayout setGeometrySource:obj];
    [(PXInlineHeadersSpriteLayout *)self->_monthsLayout setGeometrySource:obj];
  }
}

- (PXZoomableInlineHeadersLayout)initWithDataSourceManager:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = PXZoomableInlineHeadersLayout;
  v6 = [(PXZoomableInlineHeadersLayout *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSourceManager, a3);
    [v5 registerChangeObserver:v7 context:PXCuratedLibraryInlineHeadersObserverContext];
    v8 = [[PXInlineHeadersSpriteLayout alloc] initWithLevel:0];
    yearsLayout = v7->_yearsLayout;
    v7->_yearsLayout = v8;

    v10 = [[PXInlineHeadersSpriteLayout alloc] initWithLevel:1];
    monthsLayout = v7->_monthsLayout;
    v7->_monthsLayout = v10;

    [(PXGSplitLayout *)v7 setFirstSublayout:v7->_yearsLayout];
    [(PXGSplitLayout *)v7 setSecondSublayout:v7->_monthsLayout];
    [(PXGSplitLayout *)v7 setMode:4];
    p_updateFlags = &v7->_updateFlags;
    needsUpdate = v7->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!v7->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        *p_updateFlags = needsUpdate | 1;
        goto LABEL_8;
      }

LABEL_6:
      if (v7->_updateFlags.updated)
      {
        v16 = [MEMORY[0x277CCA890] currentHandler];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXZoomableInlineHeadersLayout initWithDataSourceManager:]"];
        [v16 handleFailureInFunction:v17 file:@"PXZoomableInlineHeadersLayout.m" lineNumber:58 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (v7->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = v7->_updateFlags.willPerformUpdate;
    *p_updateFlags = 1;
    if (!willPerformUpdate)
    {
      [(PXZoomableInlineHeadersLayout *)v7 setNeedsUpdate];
    }
  }

LABEL_8:

  return v7;
}

@end