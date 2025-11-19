@interface FSTester
- (void)configureFileTreeWithLabel:(id)a3 atRootURL:(id)a4 wharfURL:(id)a5 bundleBitPackageDetection:(BOOL)a6 completion:(id)a7;
- (void)createItemOfKind:(int64_t)a3 parentID:(int64_t)a4 filename:(id)a5 content:(id)a6 isResurrected:(BOOL)a7 uniqueFPID:(id)a8 completion:(id)aBlock;
- (void)deleteItemWithHandle:(id)a3 completion:(id)a4;
- (void)editItemWithHandle:(id)a3 editKind:(int64_t)a4 content:(id)a5 completion:(id)a6;
- (void)moveItemAtURL:(id)a3 toURL:(id)a4 completion:(id)a5;
- (void)moveItemWithHandle:(id)a3 underParent:(id)a4 filename:(id)a5 replaceTarget:(BOOL)a6 completion:(id)a7;
- (void)purge:(id)a3;
- (void)removeItemAtURL:(id)a3 completion:(id)a4;
- (void)updateMetadataWithHandle:(id)a3 metadata:(id)a4 fields:(int64_t)a5 completion:(id)a6;
@end

@implementation FSTester

- (void)configureFileTreeWithLabel:(id)a3 atRootURL:(id)a4 wharfURL:(id)a5 bundleBitPackageDetection:(BOOL)a6 completion:(id)a7
{
  v23 = a6;
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22[-v15];
  v17 = _Block_copy(a7);
  v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v20 = v19;
  sub_1CF9E59D8();
  sub_1CF9E59D8();
  _Block_copy(v17);

  sub_1CF72594C(v18, v20, v16, v13, v23, self, v17);
  _Block_release(v17);
  _Block_release(v17);

  v21 = *(v10 + 8);
  v21(v13, v9);
  v21(v16, v9);
}

- (void)createItemOfKind:(int64_t)a3 parentID:(int64_t)a4 filename:(id)a5 content:(id)a6 isResurrected:(BOOL)a7 uniqueFPID:(id)a8 completion:(id)aBlock
{
  v10 = a7;
  v15 = _Block_copy(aBlock);
  v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v18 = v17;
  v19 = a8;

  if (a6)
  {
    v29 = self;
    v20 = a8;
    v21 = v18;
    v22 = v16;
    v23 = a3;
    v24 = a4;
    v25 = v10;
    v26 = a6;
    a6 = sub_1CF9E5B88();
    v28 = v27;

    v10 = v25;
    a4 = v24;
    a3 = v23;
    v16 = v22;
    v18 = v21;
    a8 = v20;
    self = v29;
  }

  else
  {
    v28 = 0xF000000000000000;
  }

  _Block_copy(v15);
  sub_1CF726408(a3, a4, v16, v18, a6, v28, v10, a8, self, v15);
  _Block_release(v15);
  _Block_release(v15);
  sub_1CEFE48D8(a6, v28);
}

- (void)moveItemWithHandle:(id)a3 underParent:(id)a4 filename:(id)a5 replaceTarget:(BOOL)a6 completion:(id)a7
{
  v7 = a6;
  v12 = _Block_copy(a7);
  v13 = a3;

  v14 = a4;
  v15 = a5;
  v16 = sub_1CF9E5B88();
  v18 = v17;

  if (v15)
  {
    v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  _Block_copy(v12);
  sub_1CF72826C(v16, v18, v14, v19, v21, v7, self, v12);
  _Block_release(v12);
  _Block_release(v12);

  sub_1CEFE4714(v16, v18);
}

- (void)editItemWithHandle:(id)a3 editKind:(int64_t)a4 content:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = a3;
  v12 = a5;

  v13 = sub_1CF9E5B88();
  v15 = v14;

  v16 = sub_1CF9E5B88();
  v18 = v17;

  _Block_copy(v10);
  sub_1CF7288E8(v13, v15, a4, v16, v18, self, v10);
  _Block_release(v10);
  _Block_release(v10);
  sub_1CEFE4714(v16, v18);
  sub_1CEFE4714(v13, v15);
}

- (void)updateMetadataWithHandle:(id)a3 metadata:(id)a4 fields:(int64_t)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = a3;
  v12 = a4;

  v13 = sub_1CF9E5B88();
  v15 = v14;

  v16 = sub_1CF9E5B88();
  v18 = v17;

  _Block_copy(v10);
  sub_1CF729134(v13, v15, v16, v18, a5, self, v10);
  _Block_release(v10);
  _Block_release(v10);
  sub_1CEFE4714(v16, v18);
  sub_1CEFE4714(v13, v15);
}

- (void)deleteItemWithHandle:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;

  v8 = sub_1CF9E5B88();
  v10 = v9;

  _Block_copy(v6);
  sub_1CF7299E8(v8, v10, self, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_1CEFE4714(v8, v10);
}

- (void)purge:(id)a3
{
  v4 = _Block_copy(a3);
  if (*self->tester)
  {

    sub_1CF509948();

    v4[2](v4, 0);

    _Block_release(v4);
  }

  else
  {

    _Block_release(v4);
    __break(1u);
  }
}

- (void)removeItemAtURL:(id)a3 completion:(id)a4
{
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(a4);
  sub_1CF9E59D8();
  _Block_copy(v10);

  sub_1CF729C08(v9, v10);
  _Block_release(v10);
  _Block_release(v10);

  (*(v6 + 8))(v9, v5);
}

- (void)moveItemAtURL:(id)a3 toURL:(id)a4 completion:(id)a5
{
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  v14 = _Block_copy(a5);
  sub_1CF9E59D8();
  sub_1CF9E59D8();
  _Block_copy(v14);

  sub_1CF729D3C(v13, v10, v14);
  _Block_release(v14);
  _Block_release(v14);

  v15 = *(v7 + 8);
  v15(v10, v6);
  v15(v13, v6);
}

@end