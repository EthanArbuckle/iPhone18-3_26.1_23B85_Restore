@interface GKConstraintUpdateController
+ (id)sharedController;
- (void)_updateConstraints;
- (void)dealloc;
- (void)registerConstraint:(id)a3 leading:(double)a4 forFontTextStyle:(id)a5;
- (void)updateConstraint:(id)a3;
@end

@implementation GKConstraintUpdateController

+ (id)sharedController
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__GKConstraintUpdateController_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedController_onceToken != -1)
  {
    dispatch_once(&sharedController_onceToken, block);
  }

  v2 = sharedController_controller;

  return v2;
}

uint64_t __48__GKConstraintUpdateController_sharedController__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedController_controller;
  sharedController_controller = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKConstraintUpdateController;
  [(GKConstraintUpdateController *)&v4 dealloc];
}

- (void)updateConstraint:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_getAssociatedObject(v3, sel__gkConstraintInfo);
    v16 = v4;
    if (!v4)
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/NSLayoutConstraint+GKAdditions.m"];
      v8 = [v7 lastPathComponent];
      v9 = [v5 stringWithFormat:@"%@ (leadingInfo != ((void*)0))\n[%s (%s:%d)]", v6, "-[GKConstraintUpdateController updateConstraint:]", objc_msgSend(v8, "UTF8String"), 546];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v9}];
      v4 = 0;
    }

    [v4 leading];
    v11 = v10;
    v12 = MEMORY[0x277D0C8B0];
    v13 = [v16 fontTextStyle];
    if (v11 == 0.0)
    {
      [v12 standardLeadingForFontTextStyle:v13];
    }

    else
    {
      [v12 scaledValueFromHISpecLeading:v13 forFontTextStyle:v11];
    }

    v15 = v14;

    [v3 setConstant:v15];
  }
}

- (void)_updateConstraints
{
  v14 = *MEMORY[0x277D85DE8];
  [(NSPointerArray *)self->_constraintsToUpdate compact];
  if ([(NSPointerArray *)self->_constraintsToUpdate count])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = self->_constraintsToUpdate;
    v4 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(GKConstraintUpdateController *)self updateConstraint:*(*(&v9 + 1) + 8 * i)];
        }

        v5 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 removeObserver:self];
  }
}

- (void)registerConstraint:(id)a3 leading:(double)a4 forFontTextStyle:(id)a5
{
  object = a3;
  v8 = a5;
  v9 = objc_alloc_init(GKConstraintLeadingInfo);
  [(GKConstraintLeadingInfo *)v9 setLeading:a4];
  [(GKConstraintLeadingInfo *)v9 setFontTextStyle:v8];

  objc_setAssociatedObject(object, sel__gkConstraintInfo, v9, 1);
  constraintsToUpdate = self->_constraintsToUpdate;
  if (!constraintsToUpdate)
  {
    v11 = [MEMORY[0x277CCAC18] pointerArrayWithOptions:5];
    v12 = self->_constraintsToUpdate;
    self->_constraintsToUpdate = v11;

    constraintsToUpdate = self->_constraintsToUpdate;
  }

  if (![(NSPointerArray *)constraintsToUpdate count])
  {
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:self selector:sel__updateConstraints name:*MEMORY[0x277D76810] object:0];
  }

  [(GKConstraintUpdateController *)self updateConstraint:object];
  [(NSPointerArray *)self->_constraintsToUpdate addPointer:object];
}

@end