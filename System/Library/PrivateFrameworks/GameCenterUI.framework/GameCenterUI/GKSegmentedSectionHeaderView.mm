@interface GKSegmentedSectionHeaderView
- (void)applyLayoutAttributes:(id)a3;
- (void)prepareForReuse;
- (void)setTitles:(id)a3;
@end

@implementation GKSegmentedSectionHeaderView

- (void)setTitles:(id)a3
{
  v4 = a3;
  v5 = [(GKSegmentedSelectorView *)self segmentedControl];
  v6 = [v5 numberOfSegments];
  if (v6 == [v4 count])
  {
    v7 = v11;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v8 = &unk_27966C8D0;
    v9 = __42__GKSegmentedSectionHeaderView_setTitles___block_invoke_2;
  }

  else
  {
    [v5 removeAllSegments];
    v7 = v12;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v8 = &unk_27966ADA0;
    v9 = __42__GKSegmentedSectionHeaderView_setTitles___block_invoke;
  }

  v7[2] = v9;
  v7[3] = v8;
  v7[4] = v5;
  v10 = v5;
  [v4 enumerateObjectsUsingBlock:v7];
}

- (void)applyLayoutAttributes:(id)a3
{
  v6.receiver = self;
  v6.super_class = GKSegmentedSectionHeaderView;
  v4 = a3;
  [(GKSegmentedSelectorView *)&v6 applyLayoutAttributes:v4];
  v5 = [v4 indexPath];

  -[GKSegmentedSectionHeaderView setSectionIndex:](self, "setSectionIndex:", [v5 section]);
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = GKSegmentedSectionHeaderView;
  [(GKSegmentedSelectorView *)&v4 prepareForReuse];
  self->_sectionIndex = -1;
  v3 = [(GKSegmentedSelectorView *)self segmentedControl];
  [v3 removeAllSegments];

  [(GKSegmentedSelectorView *)self setTarget:0];
}

@end