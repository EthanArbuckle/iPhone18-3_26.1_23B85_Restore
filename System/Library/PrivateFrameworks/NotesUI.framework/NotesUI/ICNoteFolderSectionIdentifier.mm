@interface ICNoteFolderSectionIdentifier
- (BOOL)isEqual:(id)a3;
- (ICNoteFolderSectionIdentifier)init;
- (ICNoteFolderSectionIdentifier)initWithNoteContainerObjectID:(id)a3;
- (id)debugDescription;
- (unint64_t)hash;
@end

@implementation ICNoteFolderSectionIdentifier

- (ICNoteFolderSectionIdentifier)init
{
  v3.receiver = self;
  v3.super_class = ICNoteFolderSectionIdentifier;
  return [(ICNoteSectionIdentifier *)&v3 initWithNoteSectionType:2];
}

- (ICNoteFolderSectionIdentifier)initWithNoteContainerObjectID:(id)a3
{
  v5 = a3;
  v6 = [(ICNoteFolderSectionIdentifier *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_noteContainerObjectID, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();

  if (v5 && (v6 = -[ICNoteSectionIdentifier sectionType](self, "sectionType"), v6 == [v5 sectionType]))
  {
    v7 = [(ICNoteFolderSectionIdentifier *)self noteContainerObjectID];
    v8 = [v5 noteContainerObjectID];
    v9 = *MEMORY[0x1E695E738];
    if (*MEMORY[0x1E695E738] == v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7;
    }

    v11 = v10;
    if (v9 == v8)
    {
      v12 = 0;
    }

    else
    {
      v12 = v8;
    }

    v13 = v12;
    v14 = v13;
    if (v11 | v13)
    {
      if (v11)
      {
        v15 = v13 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = [v11 isEqual:v13];
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    v4 = [(ICNoteSectionIdentifier *)self sectionType];
    v5 = [(ICNoteFolderSectionIdentifier *)self noteContainerObjectID];
    v6 = [v5 hash];
    self->_hash = ICHashWithHashKeys(v4, v7, v8, v9, v10, v11, v12, v13, v6);

    return self->_hash;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromICNoteSectionType([(ICNoteSectionIdentifier *)self sectionType]);
  v7 = [(ICNoteFolderSectionIdentifier *)self noteContainerObjectID];
  v8 = [v3 stringWithFormat:@"<%@: %p, sectionType: %@, noteContainerObjectID: %@>", v5, self, v6, v7];

  return v8;
}

@end