void llvm::vfs::InMemoryFileSystem::InMemoryFileSystem(llvm::vfs::InMemoryFileSystem *this)
{
  *(this + 2) = 0;
  *this = &unk_2868A1EE0;
  operator new();
}

void llvm::vfs::InMemoryFileSystem::~InMemoryFileSystem(void **this)
{
  *this = &unk_2868A1EE0;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  this[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_2868A1EE0;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  this[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  *this = &unk_2868A1EE0;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  this[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x259C63180);
}

uint64_t llvm::vfs::InMemoryFileSystem::addFile(uint64_t a1, uint64_t a2, time_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t *__return_ptr, uint64_t, __int128 *), uint64_t a10)
{
  v80 = *MEMORY[0x277D85DE8];
  v66 = v68;
  v67 = xmmword_257371870;
  llvm::Twine::toVector(a2, &v66);
  (*(*a1 + 112))(a1, &v66);
  if (*(a1 + 48) == 1)
  {
    llvm::sys::path::remove_dots(&v66, 1, 0);
  }

  if (!v67)
  {
    goto LABEL_45;
  }

  v48 = a4;
  v16 = *(a1 + 16);
  llvm::sys::path::begin(v66, v67, 0, v63);
  llvm::sys::path::end(v66, v67, v62);
  if ((a5 & 0x100000000) != 0)
  {
    v17 = a5;
  }

  else
  {
    v17 = 0;
  }

  v49 = v17;
  if ((a6 & 0x100000000) != 0)
  {
    v18 = a6;
  }

  else
  {
    v18 = 0;
  }

  if ((a7 & 0x100000000) != 0)
  {
    v19 = a7;
  }

  else
  {
    v19 = 2;
  }

  v47 = v19;
  if ((a8 & 0x100000000) != 0)
  {
    v20 = a8;
  }

  else
  {
    v20 = 511;
  }

  v21 = v64;
  v22 = v65;
  llvm::sys::path::const_iterator::operator++(v63);
  if (llvm::sys::path::const_iterator::operator==(v63, v62))
  {
LABEL_17:
    Child = llvm::vfs::detail::InMemoryDirectory::getChild(v16, v21, v22);
    if (!Child)
    {
      v33 = v66;
      v34 = v67;
      v35 = *v48;
      *v48 = 0;
      v69 = *(v16 + 64);
      v70 = v33;
      v71 = v34;
      v72 = v21;
      v73 = v22;
      v74 = a3;
      v75 = v35;
      v76 = v49;
      v77 = v18;
      v78 = v47;
      v79 = v20;
      a9(&v51, a10, &v69);
      v36 = v75;
      v75 = 0;
      if (v36)
      {
        (*(*v36 + 8))(v36);
      }

      *&v69 = v21;
      *(&v69 + 1) = v22;
      std::__tree<std::__value_type<std::string,std::unique_ptr<llvm::vfs::detail::InMemoryNode>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<llvm::vfs::detail::InMemoryNode>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<llvm::vfs::detail::InMemoryNode>>>>::__emplace_unique_impl<llvm::StringRef &,std::unique_ptr<llvm::vfs::detail::InMemoryNode>>();
    }

    v24 = *(Child + 8);
    if (v24 == 2)
    {
      v25 = v47 == 3;
LABEL_20:
      v26 = v25;
      goto LABEL_46;
    }

    v37 = *v48;
    if (*v48)
    {
      v38 = *(v37 + 8);
      v39 = *(v37 + 16) - v38;
      if (v24 == 3)
      {
LABEL_34:
        (*(**(Child + 40) + 32))(&v69);
        v40 = v70 ^ 1;
        if ((v70 & 1) != 0 || (v41 = *(v69 + 8), v42 = *(v69 + 16), v42 - v41 != v39))
        {
          v26 = 0;
        }

        else
        {
          v43 = v42 == v41 || memcmp(v41, v38, v39) == 0;
          v26 = v40 & v43;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v39 = 0;
      v38 = "";
      if (v24 == 3)
      {
        goto LABEL_34;
      }
    }

    if (v24 <= 1)
    {
      (*(*Child + 32))(&v69);
      if ((v70 & 1) == 0)
      {
        v44 = *(v69 + 8);
        v45 = *(v69 + 16);
        if (v45 - v44 == v39)
        {
          if (v45 == v44)
          {
            v26 = 1;
            goto LABEL_46;
          }

          v25 = memcmp(v44, v38, v39) == 0;
          goto LABEL_20;
        }
      }
    }

LABEL_45:
    v26 = 0;
    goto LABEL_46;
  }

  while (1)
  {
    v27 = llvm::vfs::detail::InMemoryDirectory::getChild(v16, v21, v22);
    if (!v27)
    {
      LOWORD(v72) = 261;
      *&v69 = v66;
      *(&v69 + 1) = v21 + v22 - v66;
      v28 = *(v16 + 72);
      v29 = llvm::hash_value(v21, v22);
      v30 = __ROR8__(v29 + 16, 16);
      v31 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v30 ^ ((0x9DDFEA08EB382D69 * (v28 ^ v30 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v28 ^ v30 ^ 0xFF51AFD7ED558CCDLL)))) ^ ((0x9DDFEA08EB382D69 * (v30 ^ ((0x9DDFEA08EB382D69 * (v28 ^ v30 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v28 ^ v30 ^ 0xFF51AFD7ED558CCDLL)))) >> 47))) ^ v29;
      v32 = 1000000000 * (std::chrono::system_clock::from_time_t(a3).__d_.__rep_ / 1000000);
      llvm::Twine::str(&v69, __p);
      v53 = -1;
      v54 = v31;
      v55 = v32;
      v56 = v49;
      v57 = v18;
      v58 = 0;
      v59 = 3;
      v60 = v20 | 0x1C0;
      v61 = 0;
      operator new();
    }

    v16 = v27;
    if (*(v27 + 8) != 2)
    {
      break;
    }

    v21 = v64;
    v22 = v65;
    llvm::sys::path::const_iterator::operator++(v63);
    if (llvm::sys::path::const_iterator::operator==(v63, v62))
    {
      goto LABEL_17;
    }
  }

  v26 = 0;
LABEL_46:
  if (v66 != v68)
  {
    free(v66);
  }

  return v26 & 1;
}

uint64_t llvm::vfs::detail::InMemoryDirectory::getChild(uint64_t a1, const void *a2, size_t a3)
{
  if (a2)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (a3 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v29) = a3;
    if (a3)
    {
      memmove(&__dst, a2, a3);
    }

    *(&__dst + a3) = 0;
    v8 = *(a1 + 128);
    v5 = a1 + 128;
    v6 = v8;
    v7 = HIBYTE(v29);
    if (!v8)
    {
      goto LABEL_52;
    }
  }

  else
  {
    __dst = 0;
    v28 = 0;
    v29 = 0;
    v5 = a1 + 128;
    v6 = *(a1 + 128);
    v7 = 0;
    if (!v6)
    {
      goto LABEL_52;
    }
  }

  if ((v7 & 0x80u) == 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = v28;
  }

  if ((v7 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v11 = v5;
  do
  {
    v12 = *(v6 + 55);
    if (v12 >= 0)
    {
      v13 = *(v6 + 55);
    }

    else
    {
      v13 = *(v6 + 40);
    }

    if (v12 >= 0)
    {
      v14 = (v6 + 32);
    }

    else
    {
      v14 = *(v6 + 32);
    }

    if (v9 >= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v9;
    }

    v16 = memcmp(v14, p_dst, v15);
    v17 = v13 < v9;
    if (v16)
    {
      v17 = v16 < 0;
    }

    v18 = !v17;
    if (v17)
    {
      v19 = 8;
    }

    else
    {
      v19 = 0;
    }

    if (v18)
    {
      v11 = v6;
    }

    v6 = *(v6 + v19);
  }

  while (v6);
  if (v11 != v5)
  {
    v20 = *(v11 + 55);
    v21 = v20 >= 0 ? *(v11 + 55) : *(v11 + 40);
    v22 = v20 >= 0 ? (v11 + 32) : *(v11 + 32);
    v23 = v21 >= v9 ? v9 : v21;
    v24 = memcmp(p_dst, v22, v23);
    v25 = v9 < v21;
    if (v24)
    {
      v25 = v24 < 0;
    }

    if (!v25)
    {
      if ((v7 & 0x80) == 0)
      {
        goto LABEL_50;
      }

LABEL_53:
      operator delete(__dst);
      if (v11 != v5)
      {
        return *(v11 + 56);
      }

      return 0;
    }
  }

LABEL_52:
  v11 = v5;
  if ((v7 & 0x80) != 0)
  {
    goto LABEL_53;
  }

LABEL_50:
  if (v11 != v5)
  {
    return *(v11 + 56);
  }

  return 0;
}

uint64_t llvm::vfs::InMemoryFileSystem::addFile(uint64_t a1, uint64_t a2, time_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a4;
  *a4 = 0;
  v12 = v8;
  result = llvm::vfs::InMemoryFileSystem::addFile(a1, a2, a3, &v12, a5, a6, a7, a8, llvm::function_ref<std::unique_ptr<llvm::vfs::detail::InMemoryNode> ()(llvm::vfs::detail::NewInMemoryNodeInfo)>::callback_fn<llvm::vfs::InMemoryFileSystem::addFile(llvm::Twine const&,long,std::unique_ptr<llvm::MemoryBuffer>,std::optional<unsigned int>,std::optional<unsigned int>,std::optional<llvm::sys::fs::file_type>,std::optional<llvm::sys::fs::perms>)::$_0>, &v11);
  if (v12)
  {
    v10 = result;
    (*(*v12 + 8))(v12);
    return v10;
  }

  return result;
}

uint64_t llvm::vfs::InMemoryFileSystem::addLazyFile(uint64_t a1, uint64_t a2, time_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = 0;
  v11[0] = a4;
  v11[1] = a5;
  result = llvm::vfs::InMemoryFileSystem::addFile(a1, a2, a3, &v12, a6, a7, a8, a9, llvm::function_ref<std::unique_ptr<llvm::vfs::detail::InMemoryNode> ()(llvm::vfs::detail::NewInMemoryNodeInfo)>::callback_fn<llvm::vfs::InMemoryFileSystem::addLazyFile(llvm::Twine const&,long,std::function<llvm::ErrorOr<std::unique_ptr<llvm::MemoryBuffer>> ()(llvm::StringRef)> &,unsigned long,std::optional<unsigned int>,std::optional<unsigned int>,std::optional<llvm::sys::fs::file_type>,std::optional<llvm::sys::fs::perms>)::$_0>, v11);
  if (v12)
  {
    v10 = result;
    (*(*v12 + 8))(v12);
    return v10;
  }

  return result;
}

uint64_t llvm::vfs::InMemoryFileSystem::addFileNoOwn(uint64_t a1, uint64_t a2, time_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a4[1];
  v19[0] = *a4;
  v19[1] = v15;
  llvm::MemoryBuffer::getMemBuffer(v19, &v20);
  result = llvm::vfs::InMemoryFileSystem::addFile(a1, a2, a3, &v20, a5, a6, a7, a8, llvm::function_ref<std::unique_ptr<llvm::vfs::detail::InMemoryNode> ()(llvm::vfs::detail::NewInMemoryNodeInfo)>::callback_fn<llvm::vfs::InMemoryFileSystem::addFileNoOwn(llvm::Twine const&,long,llvm::MemoryBufferRef const&,std::optional<unsigned int>,std::optional<unsigned int>,std::optional<llvm::sys::fs::file_type>,std::optional<llvm::sys::fs::perms>)::$_0>, v19);
  v17 = v20;
  v20 = 0;
  if (v17)
  {
    v18 = result;
    (*(*v17 + 8))(v17);
    return v18;
  }

  return result;
}

void llvm::vfs::InMemoryFileSystem::lookupNode(llvm::vfs::InMemoryFileSystem *this@<X0>, const llvm::Twine *a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v66[16] = *MEMORY[0x277D85DE8];
  v64 = v66;
  v65 = xmmword_257371870;
  llvm::Twine::toVector(a2, &v64);
  (*(*this + 112))(this, &v64);
  if (*(this + 48) == 1)
  {
    llvm::sys::path::remove_dots(&v64, 1, 0);
  }

  v9 = *(this + 2);
  if (!v65)
  {
    v12 = v63;
    v61 = v63;
    v62 = xmmword_257371870;
    llvm::vfs::detail::NamedNodeOrError::NamedNodeOrError(a5, &v61, v9);
    v13 = v61;
    goto LABEL_13;
  }

  llvm::sys::path::begin(v64, v65, 0, v37);
  llvm::sys::path::end(v64, v65, v36);
  Child = llvm::vfs::detail::InMemoryDirectory::getChild(v9, v38, v39);
  llvm::sys::path::const_iterator::operator++(v37);
  if (!Child)
  {
LABEL_74:
    *(a5 + 160) |= 1u;
    v33 = std::generic_category();
    *a5 = 2;
    *(a5 + 8) = v33;
    goto LABEL_75;
  }

  if (a4 > 0x10)
  {
    while (1)
    {
      v11 = *(Child + 8);
      if (v11 == 4)
      {
        break;
      }

      if (v11 < 2)
      {
        goto LABEL_58;
      }

      if (v11 == 3)
      {
        goto LABEL_62;
      }

      if (llvm::sys::path::const_iterator::operator==(v37, v36))
      {
        goto LABEL_66;
      }

      Child = llvm::vfs::detail::InMemoryDirectory::getChild(Child, v38, v39);
      llvm::sys::path::const_iterator::operator++(v37);
      if (!Child)
      {
        goto LABEL_74;
      }
    }

    if (llvm::sys::path::const_iterator::operator==(v37, v36) && (a3 & 1) == 0)
    {
LABEL_71:
      v12 = v60;
      v58 = v60;
      v59 = xmmword_257371870;
      v32 = v65;
      if (v65)
      {
        if (v65 >= 0x81)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        memcpy(v60, v64, v65);
        *&v59 = v32;
      }

      llvm::vfs::detail::NamedNodeOrError::NamedNodeOrError(a5, &v58, Child);
      v13 = v58;
      goto LABEL_13;
    }

    goto LABEL_74;
  }

  while (1)
  {
    v14 = *(Child + 8);
    if (v14 == 4)
    {
      if (llvm::sys::path::const_iterator::operator==(v37, v36) && (a3 & 1) == 0)
      {
        goto LABEL_71;
      }

      v17 = *(Child + 40);
      v16 = Child + 40;
      v15 = v17;
      v18 = *(v16 + 23);
      if (v18 >= 0)
      {
        v19 = v16;
      }

      else
      {
        v19 = v15;
      }

      if (v18 >= 0)
      {
        v20 = *(v16 + 23);
      }

      else
      {
        v20 = *(v16 + 8);
      }

      v55 = v57;
      v56 = xmmword_257371870;
      if (v20 > 0x80)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      v21 = 0;
      if (v20)
      {
        memcpy(v55, v19, v20);
        v21 = v56;
      }

      *&v56 = v21 + v20;
      v22 = (*(*this + 112))(this, &v55);
      if (v22)
      {
        v24 = 0;
        *(a5 + 160) |= 1u;
        *a5 = v22;
        *(a5 + 8) = v23;
        goto LABEL_43;
      }

      v35 = 261;
      v34[0] = v55;
      v34[1] = v56;
      llvm::vfs::InMemoryFileSystem::lookupNode(&__src, this, v34, 1, a4 + 1);
      if (v54)
      {
        v25 = *(a5 + 160);
      }

      else
      {
        if (!llvm::sys::path::const_iterator::operator==(v37, v36))
        {
          if (*(v53 + 8) == 2)
          {
            v24 = 1;
            v9 = v53;
          }

          else
          {
            *(a5 + 160) |= 1u;
            v28 = std::generic_category();
            v24 = 0;
            *a5 = 2;
            *(a5 + 8) = v28;
          }

LABEL_40:
          if ((v54 & 1) == 0 && __src != v52)
          {
            free(__src);
          }

LABEL_43:
          if (v55 != v57)
          {
            free(v55);
          }

          if (!v24)
          {
            goto LABEL_75;
          }

          goto LABEL_17;
        }

        v25 = *(a5 + 160);
        if ((v54 & 1) == 0)
        {
          *(a5 + 160) = v25 & 0xFE;
          *a5 = a5 + 24;
          *(a5 + 8) = xmmword_257371870;
          v27 = __n;
          if (__n && &__src != a5)
          {
            if (__src == v52)
            {
              if (__n >= 0x81)
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod();
              }

              memcpy(*a5, __src, __n);
              *(a5 + 8) = v27;
              __n = 0;
            }

            else
            {
              *a5 = __src;
              *(a5 + 8) = v27;
              *(a5 + 16) = v51;
              __src = v52;
              __n = 0;
              v51 = 0;
            }
          }

          v24 = 0;
          *(a5 + 152) = v53;
          goto LABEL_40;
        }
      }

      v24 = 0;
      *(a5 + 160) = v25 | 1;
      v26 = __n;
      *a5 = __src;
      *(a5 + 8) = v26;
      goto LABEL_40;
    }

    if (v14 <= 1)
    {
LABEL_58:
      if (!llvm::sys::path::const_iterator::operator==(v37, v36))
      {
        goto LABEL_74;
      }

      v12 = v48;
      v46 = v48;
      v47 = xmmword_257371870;
      v29 = v65;
      if (v65)
      {
        if (v65 >= 0x81)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        memcpy(v48, v64, v65);
        *&v47 = v29;
      }

      llvm::vfs::detail::NamedNodeOrError::NamedNodeOrError(a5, &v46, Child);
      v13 = v46;
      goto LABEL_13;
    }

    if (v14 == 3)
    {
      break;
    }

    v9 = Child;
    if (llvm::sys::path::const_iterator::operator==(v37, v36))
    {
LABEL_66:
      v12 = v42;
      v40 = v42;
      v41 = xmmword_257371870;
      v31 = v65;
      if (v65)
      {
        if (v65 >= 0x81)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        memcpy(v42, v64, v65);
        *&v41 = v31;
      }

      llvm::vfs::detail::NamedNodeOrError::NamedNodeOrError(a5, &v40, Child);
      v13 = v40;
      goto LABEL_13;
    }

LABEL_17:
    Child = llvm::vfs::detail::InMemoryDirectory::getChild(v9, v38, v39);
    llvm::sys::path::const_iterator::operator++(v37);
    if (!Child)
    {
      goto LABEL_74;
    }
  }

LABEL_62:
  if (!llvm::sys::path::const_iterator::operator==(v37, v36))
  {
    goto LABEL_74;
  }

  v12 = v45;
  v43 = v45;
  v44 = xmmword_257371870;
  v30 = v65;
  if (v65)
  {
    if (v65 >= 0x81)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    memcpy(v45, v64, v65);
    *&v44 = v30;
  }

  llvm::vfs::detail::NamedNodeOrError::NamedNodeOrError(a5, &v43, *(Child + 40));
  v13 = v43;
LABEL_13:
  if (v13 != v12)
  {
    free(v13);
  }

LABEL_75:
  if (v64 != v66)
  {
    free(v64);
  }
}

uint64_t llvm::vfs::InMemoryFileSystem::addHardLink(llvm::vfs::InMemoryFileSystem *this, const llvm::Twine *a2, const llvm::Twine *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  llvm::vfs::InMemoryFileSystem::lookupNode(this, a2, 0, 0, &v13);
  llvm::vfs::InMemoryFileSystem::lookupNode(this, a3, 1, 0, v10);
  v6 = 0;
  if ((v12 & 1) != 0 || (v15 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (*(v11[16] + 8) <= 1u)
  {
    v8 = v10;
    v9 = 0;
    v6 = llvm::vfs::InMemoryFileSystem::addFile(this, a2, 0, &v9, 0, 0, 0, 0, llvm::function_ref<std::unique_ptr<llvm::vfs::detail::InMemoryNode> ()(llvm::vfs::detail::NewInMemoryNodeInfo)>::callback_fn<llvm::vfs::InMemoryFileSystem::addHardLink(llvm::Twine const&,llvm::Twine const&)::$_0>, &v8);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

LABEL_6:
    if (v12)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v6 = 0;
  if (v12)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (v10[0] != v11)
  {
    free(v10[0]);
  }

LABEL_10:
  if ((v15 & 1) == 0 && v13 != &v14)
  {
    free(v13);
  }

  return v6;
}

uint64_t llvm::vfs::InMemoryFileSystem::addSymbolicLink(llvm::vfs::InMemoryFileSystem *a1, const llvm::Twine *a2, uint64_t a3, time_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = *MEMORY[0x277D85DE8];
  llvm::vfs::InMemoryFileSystem::lookupNode(a1, a2, 0, 0, &v26);
  v14 = 0;
  if ((v28 & 1) == 0)
  {
    goto LABEL_9;
  }

  v23 = v25;
  v24 = xmmword_257371870;
  v20 = v22;
  v21 = xmmword_257371870;
  llvm::Twine::toVector(a2, &v23);
  llvm::Twine::toVector(a3, &v20);
  v19 = 261;
  v18[0] = v23;
  v18[1] = v24;
  v16[1] = &v20;
  v17 = 0;
  v16[0] = &v23;
  v14 = llvm::vfs::InMemoryFileSystem::addFile(a1, v18, a4, &v17, a5, a6, 0x100000004, a7, llvm::function_ref<std::unique_ptr<llvm::vfs::detail::InMemoryNode> ()(llvm::vfs::detail::NewInMemoryNodeInfo)>::callback_fn<llvm::vfs::InMemoryFileSystem::addSymbolicLink(llvm::Twine const&,llvm::Twine const&,long,std::optional<unsigned int>,std::optional<unsigned int>,std::optional<llvm::sys::fs::perms>)::$_0>, v16);
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  if (v20 != v22)
  {
    free(v20);
  }

  if (v23 != v25)
  {
    free(v23);
  }

  if ((v28 & 1) == 0)
  {
LABEL_9:
    if (v26 != &v27)
    {
      free(v26);
    }
  }

  return v14;
}

void llvm::vfs::InMemoryFileSystem::status(llvm::vfs::InMemoryFileSystem *this@<X0>, const llvm::Twine *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  llvm::vfs::InMemoryFileSystem::lookupNode(this, a2, 1, 0, v12);
  if (v14)
  {
    v4 = v12[0];
    v5 = v12[1];
    *(a3 + 80) |= 1u;
    *a3 = v4;
    *(a3 + 8) = v5;
  }

  else
  {
    (*(*v13[16] + 16))(&v6);
    *(a3 + 80) &= ~1u;
    *a3 = v6;
    *(a3 + 16) = v7;
    *(a3 + 24) = v8;
    *(a3 + 40) = v9;
    *(a3 + 56) = v10;
    *(a3 + 72) = v11;
    if ((v14 & 1) == 0 && v12[0] != v13)
    {
      free(v12[0]);
    }
  }
}

void llvm::vfs::InMemoryFileSystem::openFileForRead(llvm::vfs::InMemoryFileSystem *this@<X0>, const llvm::Twine *a2@<X1>, uint64_t a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  llvm::vfs::InMemoryFileSystem::lookupNode(this, a2, 1, 0, v8);
  if (v11)
  {
    v4 = v8[0];
    v5 = v8[1];
    *(a3 + 16) |= 1u;
    *a3 = v4;
    *(a3 + 8) = v5;
  }

  else
  {
    if (v10)
    {
      v6 = *(v10 + 8) > 1u;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      operator new();
    }

    v7 = std::generic_category();
    *(a3 + 16) |= 1u;
    *a3 = 22;
    *(a3 + 8) = v7;
    if (v8[0] != &v9)
    {
      free(v8[0]);
    }
  }
}

void llvm::vfs::InMemoryFileSystem::dir_begin(llvm::vfs::InMemoryFileSystem *this, const llvm::Twine *a2, std::error_code *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  llvm::vfs::InMemoryFileSystem::lookupNode(this, a2, 1, 0, v9);
  if (v11)
  {
    v5 = v9[1];
    *&a3->__val_ = v9[0];
    a3->__cat_ = v5;
  }

  else
  {
    if (v10)
    {
      v6 = *(v10 + 8) == 2;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      llvm::Twine::str(a2, &__p);
      operator new();
    }

    v7 = std::generic_category();
    *&a3->__val_ = 20;
    a3->__cat_ = v7;
  }

  operator new();
}

uint64_t llvm::vfs::InMemoryFileSystem::setCurrentWorkingDirectory(llvm::vfs::InMemoryFileSystem *this, const llvm::Twine *a2)
{
  v10[16] = *MEMORY[0x277D85DE8];
  v8 = v10;
  v9 = xmmword_257371870;
  llvm::Twine::toVector(a2, &v8);
  (*(*this + 112))(this, &v8);
  if (*(this + 48) == 1)
  {
    llvm::sys::path::remove_dots(&v8, 1, 0);
  }

  v3 = v8;
  v4 = v9;
  if (v9)
  {
    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v7) = v9;
    memmove(&__dst, v8, v9);
    *(&__dst + v4) = 0;
    if (*(this + 47) < 0)
    {
      operator delete(*(this + 3));
    }

    *(this + 24) = __dst;
    v3 = v8;
    *(this + 5) = v7;
  }

  if (v3 != v10)
  {
    free(v3);
  }

  std::system_category();
  return 0;
}

unint64_t llvm::vfs::InMemoryFileSystem::getRealPath(uint64_t a1, uint64_t a2, unsigned __int8 **a3)
{
  v14 = *MEMORY[0x277D85DE8];
  (*(*a1 + 72))(__p);
  if (v13)
  {
    goto LABEL_8;
  }

  v6 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  if (!v6)
  {
LABEL_8:
    v8 = 1;
    std::generic_category();
    LODWORD(v9) = 0;
    if (v13)
    {
      return v8 | (v9 << 32);
    }
  }

  else
  {
    llvm::Twine::toVector(a2, a3);
    v7 = (*(*a1 + 112))(a1, a3);
    v8 = v7;
    v9 = HIDWORD(v7);
    if (v7)
    {
      if (v13)
      {
        return v8 | (v9 << 32);
      }
    }

    else
    {
      llvm::sys::path::remove_dots(a3, 1, 0);
      std::system_category();
      v8 = 0;
      if (v13)
      {
        return v8 | (v9 << 32);
      }
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return v8 | (v9 << 32);
}

uint64_t llvm::vfs::InMemoryFileSystem::isLocal(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *a3 = 0;
  std::system_category();
  return 0;
}

double llvm::vfs::InMemoryFileSystem::printImpl(int a1, llvm::raw_ostream *this, uint64_t a3, int a4)
{
  if (a4)
  {
    v5 = a4;
    do
    {
      while (1)
      {
        v6 = *(this + 4);
        if (*(this + 3) - v6 > 1uLL)
        {
          break;
        }

        llvm::raw_ostream::write(this, "  ", 2uLL);
        if (!--v5)
        {
          goto LABEL_6;
        }
      }

      *v6 = 8224;
      *(this + 4) += 2;
      --v5;
    }

    while (v5);
  }

LABEL_6:
  v7 = *(this + 4);
  if ((*(this + 3) - v7) > 0x12)
  {
    *(v7 + 15) = 174941556;
    result = *"InMemoryFileSystem\n";
    *v7 = *"InMemoryFileSystem\n";
    *(this + 4) += 19;
  }

  else
  {

    llvm::raw_ostream::write(this, "InMemoryFileSystem\n", 0x13uLL);
  }

  return result;
}

uint64_t llvm::vfs::RedirectingFileSystem::RedirectingFileSystem(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = &unk_2868A1F80;
  *(a1 + 64) = *a2;
  *a2 = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 65537;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  v3 = *(a1 + 64);
  if (v3)
  {
    (*(*v3 + 72))(&__str);
    v4 = v7;
    if ((v7 & 1) == 0)
    {
      std::string::operator=((a1 + 40), &__str);
      v4 = v7;
    }

    if ((v4 & 1) == 0 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  return a1;
}

{
  v7 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = &unk_2868A1F80;
  *(a1 + 64) = *a2;
  *a2 = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 65537;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  v3 = *(a1 + 64);
  if (v3)
  {
    (*(*v3 + 72))(&__str);
    if ((v6 & 1) == 0)
    {
      std::string::operator=((a1 + 40), &__str);
      if ((v6 & 1) == 0 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }
  }

  return a1;
}

void llvm::vfs::RedirectingFileSystem::getCurrentWorkingDirectory(llvm::vfs::RedirectingFileSystem *this@<X0>, std::string *a2@<X8>)
{
  a2[1].__r_.__value_.__s.__data_[0] &= ~1u;
  if (*(this + 63) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 5), *(this + 6));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 40);
    a2->__r_.__value_.__r.__words[2] = *(this + 7);
  }
}

uint64_t llvm::vfs::RedirectingFileSystem::setCurrentWorkingDirectory(llvm::vfs::RedirectingFileSystem *this, const llvm::Twine *a2)
{
  v11[16] = *MEMORY[0x277D85DE8];
  if (((*(*this + 96))(this) & 1) == 0)
  {
    v4 = 2;
    std::generic_category();
    return v4;
  }

  __src = v11;
  *__len = xmmword_257371870;
  llvm::Twine::toVector(a2, &__src);
  v4 = (*(*this + 112))(this, &__src);
  if (!v4)
  {
    v5 = __len[0];
    if (__len[0] >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (__len[0] >= 0x17)
    {
      operator new();
    }

    HIBYTE(v8) = __len[0];
    if (__len[0])
    {
      memmove(&__dst, __src, __len[0]);
      *(&__dst + v5) = 0;
      if ((*(this + 63) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      LOBYTE(__dst) = 0;
      if ((*(this + 63) & 0x80000000) == 0)
      {
LABEL_7:
        *(this + 40) = __dst;
        *(this + 7) = v8;
        std::system_category();
        goto LABEL_8;
      }
    }

    operator delete(*(this + 5));
    goto LABEL_7;
  }

LABEL_8:
  if (__src != v11)
  {
    free(__src);
  }

  return v4;
}

unint64_t llvm::vfs::RedirectingFileSystem::isLocal(llvm::vfs::RedirectingFileSystem *this, const llvm::Twine *a2, BOOL *a3)
{
  v15[32] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = xmmword_25736B790;
  llvm::Twine::toVector(a2, &v13);
  if (!(*(*this + 112))(this, &v13))
  {
    v9 = *(this + 8);
    v12 = 261;
    v11[0] = v13;
    v11[1] = v14;
    v10 = (*(*v9 + 104))(v9, v11, a3);
    v6 = v10 & 0xFFFFFFFF00000000;
    v5 = v10;
    v7 = v13;
    if (v13 == v15)
    {
      return v6 | v5;
    }

    goto LABEL_3;
  }

  std::system_category();
  v5 = 0;
  v6 = 0;
  v7 = v13;
  if (v13 != v15)
  {
LABEL_3:
    free(v7);
  }

  return v6 | v5;
}

void *llvm::vfs::RedirectingFileSystem::makeAbsolute(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v17 = 261;
  v4 = *(a2 + 8);
  __p = *a2;
  v14 = v4;
  if (llvm::sys::path::is_absolute(&__p, 1) & 1) != 0 || (v12 = 261, v5 = *(a2 + 8), v11[0] = *a2, v11[1] = v5, (llvm::sys::path::is_absolute(v11, 3)))
  {
    std::system_category();
    return 0;
  }

  else
  {
    v7 = (*(*a1 + 72))(&__p, a1);
    if (v16)
    {
      return __p;
    }

    else
    {
      if (v15 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v15 >= 0)
      {
        v9 = v15;
      }

      else
      {
        v9 = v14;
      }

      result = llvm::vfs::RedirectingFileSystem::makeAbsolute(v7, p_p, v9, a2);
      if ((v16 & 1) == 0 && v15 < 0)
      {
        v10 = result;
        operator delete(__p);
        return v10;
      }
    }
  }

  return result;
}

uint64_t llvm::vfs::RedirectingFileSystem::makeAbsolute(uint64_t a1, const void *a2, std::string::size_type a3, uint64_t a4)
{
  if (a3)
  {
    v35 = 261;
    __dst.__r_.__value_.__r.__words[0] = a2;
    __dst.__r_.__value_.__l.__size_ = a3;
    if ((llvm::sys::path::is_absolute(&__dst, 1) & 1) == 0)
    {
      v33 = 261;
      v32[0] = a2;
      v32[1] = a3;
      if ((llvm::sys::path::is_absolute(v32, 3) & 1) == 0)
      {
        std::system_category();
        return 0;
      }
    }
  }

  v35 = 261;
  __dst.__r_.__value_.__r.__words[0] = a2;
  __dst.__r_.__value_.__l.__size_ = a3;
  v7 = 1;
  if (llvm::sys::path::is_absolute(&__dst, 1))
  {
LABEL_8:
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_9;
    }

LABEL_40:
    std::string::__throw_length_error[abi:nn200100]();
  }

  __dst.__r_.__value_.__r.__words[0] = a2;
  __dst.__r_.__value_.__l.__size_ = a3;
  first_of = llvm::StringRef::find_first_of(&__dst, "/\", 2, 0);
  if (first_of == -1 || *(__dst.__r_.__value_.__r.__words[0] + first_of) == 47)
  {
    v7 = 2;
    goto LABEL_8;
  }

  v7 = 3;
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_40;
  }

LABEL_9:
  if (a3 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = a3;
  if (a3)
  {
    memmove(&__dst, a2, a3);
  }

  __dst.__r_.__value_.__s.__data_[a3] = 0;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  separator = llvm::sys::path::get_separator(v7);
  if (size < v12 || v12 && memcmp(p_dst + size - v12, separator, v12))
  {
    v13 = llvm::sys::path::get_separator(v7);
    std::string::append(&__dst, v13, v14);
  }

  std::string::append(&__dst, *a4, *(a4 + 8));
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &__dst;
  }

  else
  {
    v15 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = __dst.__r_.__value_.__l.__size_;
  }

  *(a4 + 8) = 0;
  if (*(a4 + 16) < v16)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v17 = 0;
  if (!v16)
  {
    goto LABEL_52;
  }

  v18 = *a4;
  v19 = *a4;
  if (v16 < 8)
  {
    v20 = v15;
    goto LABEL_50;
  }

  v20 = v15;
  if ((v18 - v15) >= 0x20)
  {
    if (v16 < 0x20)
    {
      v21 = 0;
      goto LABEL_45;
    }

    v21 = v16 & 0xFFFFFFFFFFFFFFE0;
    v22 = &v15->__r_.__value_.__r.__words[2];
    v23 = v18 + 16;
    v24 = v16 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v25 = *v22;
      *(v23 - 1) = *(v22 - 1);
      *v23 = v25;
      v22 += 4;
      v23 += 2;
      v24 -= 32;
    }

    while (v24);
    if (v16 == v21)
    {
      goto LABEL_51;
    }

    if ((v16 & 0x18) != 0)
    {
LABEL_45:
      v19 += v16 & 0xFFFFFFFFFFFFFFF8;
      v20 = (v15 + (v16 & 0xFFFFFFFFFFFFFFF8));
      v26 = (v15 + v21);
      v27 = &v18[v21];
      v28 = v21 - (v16 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v29 = *v26++;
        *v27 = v29;
        v27 += 8;
        v28 += 8;
      }

      while (v28);
      if (v16 == (v16 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    v20 = (v15 + v21);
    v19 += v21;
  }

  do
  {
LABEL_50:
    v30 = v20->__r_.__value_.__s.__data_[0];
    v20 = (v20 + 1);
    *v19++ = v30;
  }

  while (v20 != (v15 + v16));
LABEL_51:
  v17 = *(a4 + 8);
LABEL_52:
  *(a4 + 8) = v17 + v16;
  std::system_category();
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return 0;
}

uint64_t anonymous namespace::getExistingStyle(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  first_of = llvm::StringRef::find_first_of(v4, "/\", 2, 0);
  if (first_of == -1)
  {
    return 0;
  }

  if (*(v4[0] + first_of) == 47)
  {
    return 1;
  }

  return 3;
}

void llvm::vfs::RedirectingFileSystem::dir_begin(llvm::vfs::RedirectingFileSystem *this@<X0>, llvm::formatv_object_base **a2@<X1>, std::error_code *a3@<X2>, std::error_code *a4@<X8>)
{
  v66[32] = *MEMORY[0x277D85DE8];
  *v65 = v66;
  *&v65[8] = xmmword_25736B790;
  llvm::Twine::toVector(a2, v65);
  v8 = (*(*this + 112))(this, v65);
  *&a3->__val_ = v8;
  a3->__cat_ = v9;
  if (v8)
  {
    *&a4->__val_ = 0;
    a4->__cat_ = 0;
    goto LABEL_74;
  }

  llvm::vfs::RedirectingFileSystem::lookupPath(this, *v65, *&v65[8], &v56);
  if ((v64 & 1) == 0)
  {
    v49 = 261;
    __p = *v65;
    llvm::vfs::RedirectingFileSystem::status(&__p, this, a2, &v56, &v50);
    if (v55)
    {
      if (*(this + 26) != 2 && ((v11 = v50, v12 = v51, !v59) || *(v59 + 8) == 1) && std::generic_category() == v12 && v11 == 2)
      {
        (*(**(this + 8) + 56))(*(this + 8), a2, a3);
        v13 = 1;
      }

      else
      {
        v24 = v51;
        *&a3->__val_ = v50;
        a3->__cat_ = v24;
        *&a4->__val_ = 0;
        a4->__cat_ = 0;
        v13 = 1;
      }

LABEL_65:
      if ((v13 & 1) == 0 && v52 < 0)
      {
        operator delete(v50);
      }

      goto LABEL_68;
    }

    if (v54 != 3)
    {
      v25 = std::generic_category();
      v13 = 0;
      *&a3->__val_ = 20;
      a3->__cat_ = v25;
      *&a4->__val_ = 0;
      a4->__cat_ = 0;
      goto LABEL_65;
    }

    v46 = 0;
    v45.__val_ = 0;
    v17 = std::system_category();
    v45.__cat_ = v17;
    v18 = v59;
    v19 = *(v59 + 8);
    if (v19 == 2)
    {
      v20 = *(v59 + 40);
      LODWORD(v21) = *(v59 + 63);
      v22 = v21 >> 31;
      if (v21 >= 0)
      {
        v20 = (v59 + 40);
      }

      v23 = (v59 + 48);
    }

    else
    {
      if (v19 != 1)
      {
        operator new();
      }

      v20 = &v60;
      LODWORD(v21) = v62;
      v22 = v62 >> 31;
      if (v62 < 0)
      {
        v20 = v60;
      }

      v23 = &v61;
    }

    v26 = *v23;
    v21 = v21;
    if (v22)
    {
      v21 = v26;
    }

    v27 = *(this + 8);
    v49 = 261;
    *&__p = v20;
    *(&__p + 1) = v21;
    (*(*v27 + 56))(&v44);
    v28 = v44;
    v44 = 0;
    cat = v46.__cat_;
    v46 = v28;
    if (cat && !atomic_fetch_add(&cat->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (cat->__on_zero_shared)(cat);
      std::__shared_weak_count::__release_weak(cat);
    }

    v30 = v44.__cat_;
    if (v44.__cat_ && !atomic_fetch_add(&v44.__cat_[1], 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
    }

    v31 = *(this + 98);
    v32 = *(v18 + 64);
    if (v32)
    {
      v31 = v32 == 1;
    }

    if ((v31 & 1) == 0)
    {
      llvm::SmallString<256u>::operator std::string(v65, &__p);
    }

    val = v45.__val_;
    if (v45.__val_)
    {
      v34 = std::generic_category();
      if (val != 2 || v45.__cat_ != v34)
      {
        *a3 = v45;
        *&a4->__val_ = 0;
        a4->__cat_ = 0;
        goto LABEL_61;
      }

      __p = 0uLL;
      llvm::vfs::directory_iterator::operator=(&v46, &__p);
      std::shared_ptr<llvm::vfs::detail::DirIterImpl>::~shared_ptr[abi:nn200100](&__p);
    }

    if (*(this + 26) != 2)
    {
      v44.__val_ = 0;
      v44.__cat_ = v17;
      v36 = *(this + 8);
      v49 = 261;
      __p = *v65;
      (*(*v36 + 56))(&v43);
      v37 = v44.__val_;
      if (v44.__val_)
      {
        v38 = std::generic_category();
        if (v37 != 2 || v44.__cat_ != v38)
        {
          *a3 = v44;
          *&a4->__val_ = 0;
          a4->__cat_ = 0;
          v41 = *(&v43 + 1);
          if (*(&v43 + 1) && !atomic_fetch_add((*(&v43 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v41->__on_zero_shared)(v41);
            std::__shared_weak_count::__release_weak(v41);
          }

          goto LABEL_61;
        }

        __p = 0uLL;
        llvm::vfs::directory_iterator::operator=(&v43, &__p);
        std::shared_ptr<llvm::vfs::detail::DirIterImpl>::~shared_ptr[abi:nn200100](&__p);
      }

      *&__p = &v48;
      *(&__p + 1) = 0x200000000;
      if (*(this + 26))
      {
        v39 = &v46;
      }

      else
      {
        v39 = &v43;
      }

      if (*(this + 26))
      {
        v40 = &v43;
      }

      else
      {
        v40 = &v46;
      }

      llvm::SmallVectorTemplateBase<llvm::vfs::directory_iterator,false>::push_back(&__p, v39);
      llvm::SmallVectorTemplateBase<llvm::vfs::directory_iterator,false>::push_back(&__p, v40);
    }

    v35 = v46;
    *a3 = v45;
    *a4 = v35;
    v46 = 0;
LABEL_61:
    v42 = v46.__cat_;
    if (v46.__cat_ && !atomic_fetch_add(&v46.__cat_[1], 0xFFFFFFFFFFFFFFFFLL))
    {
      (v42->__on_zero_shared)(v42);
      std::__shared_weak_count::__release_weak(v42);
    }

    v13 = v55;
    goto LABEL_65;
  }

  if (*(this + 26) != 2 && (v14 = v56, v15 = v57, std::generic_category() == v15) && v14 == 2)
  {
    v16 = *(this + 8);
    v53 = 261;
    v50 = *v65;
    v51 = *&v65[8];
    (*(*v16 + 56))(v16, &v50, a3);
  }

  else
  {
    v10 = v57;
    *&a3->__val_ = v56;
    a3->__cat_ = v10;
    *&a4->__val_ = 0;
    a4->__cat_ = 0;
  }

LABEL_68:
  if ((v64 & 1) == 0)
  {
    if (v63 == 1 && v62 < 0)
    {
      operator delete(v60);
    }

    if (v56 != &v58)
    {
      free(v56);
    }
  }

LABEL_74:
  if (*v65 != v66)
  {
    free(*v65);
  }
}

void llvm::vfs::RedirectingFileSystem::lookupPath(uint64_t a1@<X0>, const void *a2@<X1>, size_t a3@<X2>, void **a4@<X8>)
{
  v29[16] = *MEMORY[0x277D85DE8];
  v27 = v29;
  v28 = xmmword_257371870;
  if (a3 >= 0x81)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v7 = 0;
  if (a3)
  {
    memcpy(v27, a2, a3);
    v7 = v28;
  }

  *&v28 = v7 + a3;
  CanonicalForLookup = llvm::vfs::RedirectingFileSystem::makeCanonicalForLookup(a1, &v27);
  if (CanonicalForLookup)
  {
    *(a4 + 312) |= 1u;
    *a4 = CanonicalForLookup;
    a4[1] = v9;
    goto LABEL_29;
  }

  if (*(a1 + 100) == 1 && *(a1 + 104) == 2)
  {
    *(a1 + 99) = 1;
  }

  llvm::sys::path::begin(v27, v28, 0, v23);
  llvm::sys::path::end(v27, v28, v22);
  __src = v26;
  v25 = 0x2000000000;
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  if (v10 == v11)
  {
    v12 = *(a4 + 312);
    v15 = std::generic_category();
LABEL_26:
    *(a4 + 312) = v12 | 1;
    *a4 = 2;
    a4[1] = v15;
    goto LABEL_27;
  }

  while (1)
  {
    v21[0] = v23[0];
    v21[1] = v23[1];
    v21[2] = v23[2];
    v20[0] = v22[0];
    v20[1] = v22[1];
    v20[2] = v22[2];
    llvm::vfs::RedirectingFileSystem::lookupPathImpl(a1, v21, v20, *v10, &__src, a4);
    v12 = *(a4 + 312);
    if (*(a1 + 100) == 1 && (a4[39] & 1) == 0 && (*(a4[34] + 2) - 1) <= 1)
    {
      *(a1 + 99) = 1;
    }

    if ((v12 & 1) == 0)
    {
      break;
    }

    v13 = *a4;
    v14 = a4[1];
    v15 = std::generic_category();
    if (v14 != v15 || v13 != 2)
    {
      break;
    }

    if (++v10 == v11)
    {
      goto LABEL_26;
    }
  }

  if (&__src == a4)
  {
LABEL_27:
    v17 = __src;
    if (__src == v26)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v16 = __src;
  if (__src != v26)
  {
    if (*a4 != a4 + 2)
    {
      free(*a4);
      v16 = __src;
    }

    *a4 = v16;
    a4[1] = v25;
    __src = v26;
    v25 = 0;
    goto LABEL_29;
  }

  v18 = v25;
  v19 = *(a4 + 2);
  if (v19 >= v25)
  {
    if (v25)
    {
      memmove(*a4, __src, 8 * v25);
    }
  }

  else
  {
    if (*(a4 + 3) < v25)
    {
      *(a4 + 2) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v19)
    {
      memmove(*a4, __src, 8 * v19);
    }

    else
    {
      v19 = 0;
    }

    if (v25 != v19)
    {
      memcpy(*a4 + 8 * v19, __src + 8 * v19, 8 * (v25 - v19));
    }
  }

  *(a4 + 2) = v18;
  LODWORD(v25) = 0;
  v17 = __src;
  if (__src != v26)
  {
LABEL_28:
    free(v17);
  }

LABEL_29:
  if (v27 != v29)
  {
    free(v27);
  }
}

void llvm::vfs::RedirectingFileSystem::status(llvm::formatv_object_base **this@<X1>, uint64_t a2@<X0>, llvm::formatv_object_base **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v77 = *MEMORY[0x277D85DE8];
  v8 = *(a4 + 272);
  v9 = *(v8 + 8);
  if (v9 == 2)
  {
    v46 = a3;
    v10 = (v8 + 40);
    v11 = *(v8 + 63);
    if ((v11 & 0x8000000000000000) != 0)
    {
      v11 = *(v8 + 48);
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_8;
  }

  if (v9 == 1)
  {
    v46 = a3;
    v10 = (a4 + 280);
    v11 = *(a4 + 303);
    if ((v11 & 0x8000000000000000) == 0)
    {
LABEL_9:
      if (v11 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v11;
      if (v11)
      {
        memmove(&__dst, v10, v11);
      }

      __dst.__r_.__value_.__s.__data_[v11] = 0;
      v12 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      size = __dst.__r_.__value_.__l.__size_;
      v14 = __dst.__r_.__value_.__r.__words[0];
LABEL_17:
      if ((v12 & 0x80u) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = v14;
      }

      if ((v12 & 0x80u) == 0)
      {
        v16 = v12;
      }

      else
      {
        v16 = size;
      }

      v72[0] = &v73;
      *&v72[1] = xmmword_25736B790;
      if (v16 >= 0x101)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      v17 = 0;
      if (v16)
      {
        memcpy(v72[0], p_dst, v16);
        v17 = v72[1];
      }

      v72[1] = &v17[v16];
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14);
      }

      v18 = (*(*a2 + 112))(a2, v72);
      if (v18)
      {
        *(a5 + 80) |= 1u;
        *a5 = v18;
        *(a5 + 8) = v19;
        goto LABEL_64;
      }

      v20 = *(a2 + 64);
      WORD4(v58) = 261;
      __p[0] = v72[0];
      __p[1] = v72[1];
      (*(*v20 + 40))(&__dst);
      if (v71)
      {
        *(a5 + 80) |= 1u;
        v21 = __dst.__r_.__value_.__l.__size_;
        *a5 = __dst.__r_.__value_.__r.__words[0];
        *(a5 + 8) = v21;
LABEL_64:
        if (v72[0] != &v73)
        {
          free(v72[0]);
        }

        return;
      }

      v54 = 261;
      v53[0] = v10;
      v53[1] = v11;
      v44 = v67;
      v29 = v68;
      v31 = *(&v69 + 1);
      v30 = v69;
      v32 = *(&v68 + 1);
      llvm::Twine::str(v53, __p);
      v33 = 0;
      v58 = v44;
      *(&v59 + 1) = v32;
      v60 = __PAIR128__(v31, v30);
      v61 = 0;
      v34 = __p[0];
      v35 = __p[1];
      v55[0] = v57;
      *(v55 + 3) = *(&v57 + 3);
      v36 = HIBYTE(v57);
      __p[0] = 0;
      __p[1] = 0;
      *&v59 = v29;
      v57 = 0;
      v63[32] = 0;
      *v63 = v59;
      *&v63[16] = v60;
      v62 = v44;
      v37 = v71;
      if ((v71 & 1) == 0 && SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        v37 = v71;
        v33 = v57 < 0;
      }

      v67 = v62;
      v71 = v37 & 0xFE;
      __dst.__r_.__value_.__r.__words[0] = v34;
      __dst.__r_.__value_.__l.__size_ = v35;
      LODWORD(__dst.__r_.__value_.__r.__words[2]) = v55[0];
      *(&__dst.__r_.__value_.__r.__words[2] + 3) = *(v55 + 3);
      *(&__dst.__r_.__value_.__s + 23) = v36;
      v68 = *v63;
      v69 = *&v63[16];
      v70 = v63[32];
      if (v33)
      {
        operator delete(__p[0]);
        v36 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      v38 = *(*(a4 + 272) + 64);
      if (v38)
      {
        v39 = v38 == 1;
      }

      else
      {
        v39 = *(a2 + 98);
      }

      if (v36 < 0)
      {
        std::string::__init_copy_ctor_external(&v48, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        v48 = __dst;
      }

      v52 = v70;
      v49 = v67;
      v50 = v68;
      v51 = v69;
      if (v70)
      {
        v62 = *&v48.__r_.__value_.__l.__data_;
        *v63 = *(&v48.__r_.__value_.__l + 2);
        memset(&v48, 0, sizeof(v48));
        *&v63[8] = v67;
        *&v63[24] = v68;
        v64 = v69;
        v40 = v70;
      }

      else
      {
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v62, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
        }

        else
        {
          v62 = *&v48.__r_.__value_.__l.__data_;
          *v63 = *(&v48.__r_.__value_.__l + 2);
        }

        *&v63[8] = v49;
        *&v63[24] = v50;
        v64 = v51;
        v65 = v52;
        if ((v39 & 1) == 0)
        {
          v45 = *&v63[8];
          v41 = *&v63[24];
          v42 = v64;
          v43 = *&v63[32];
          llvm::Twine::str(v46, __p);
          v58 = v45;
          v59 = __PAIR128__(v43, v41);
          v60 = v42;
          v61 = 0;
          if ((v63[7] & 0x80000000) != 0)
          {
            operator delete(v62);
          }

          v62 = *__p;
          *v63 = v57;
          *&v63[8] = v58;
          *&v63[24] = v59;
          v64 = v60;
          v65 = v61;
          goto LABEL_59;
        }

        v40 = 1;
      }

      v65 = v40;
LABEL_59:
      *(a5 + 80) &= ~1u;
      *a5 = v62;
      *(a5 + 16) = *v63;
      v62 = 0uLL;
      *v63 = 0;
      *(a5 + 24) = *&v63[8];
      *(a5 + 40) = *&v63[24];
      *(a5 + 56) = v64;
      *(a5 + 72) = v65;
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if ((v71 & 1) == 0 && SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      goto LABEL_64;
    }

    v11 = *(a4 + 288);
    v10 = *v10;
    if (!v10)
    {
LABEL_46:
      size = 0;
      v14 = 0;
      v12 = 0;
      memset(&__dst, 0, sizeof(__dst));
      goto LABEL_17;
    }

LABEL_8:
    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    goto LABEL_9;
  }

  if (*(v8 + 87) < 0)
  {
    v22 = this;
    std::string::__init_copy_ctor_external(&__dst, *(v8 + 64), *(v8 + 72));
    this = v22;
  }

  else
  {
    __dst = *(v8 + 64);
  }

  v67 = *(v8 + 88);
  v68 = *(v8 + 104);
  v69 = *(v8 + 120);
  v70 = *(v8 + 136);
  *v47 = v67;
  v23 = v68;
  v24 = v69;
  v25 = *(&v68 + 1);
  llvm::Twine::str(this, v72);
  v73 = *v47;
  *(&v74 + 1) = v25;
  v75 = v24;
  v76 = 0;
  *(a5 + 80) &= ~1u;
  *a5 = *v72;
  *(a5 + 16) = v72[2];
  memset(v72, 0, sizeof(v72));
  *&v74 = v23;
  v26 = v73;
  v27 = v74;
  v28 = v75;
  *(a5 + 72) = 0;
  *(a5 + 56) = v28;
  *(a5 + 40) = v27;
  *(a5 + 24) = v26;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

uint64_t llvm::vfs::directory_iterator::operator=(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v3 = *(result + 8);
  *result = v2;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

const void **llvm::SmallString<256u>::operator std::string@<X0>(const void **result@<X0>, _BYTE *a2@<X8>)
{
  v3 = result[1];
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v4 = *result;
  if (v3 >= 0x17)
  {
    operator new();
  }

  a2[23] = v3;
  if (v3)
  {
    result = memmove(a2, v4, v3);
    a2[v3] = 0;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<llvm::vfs::directory_iterator,false>::push_back(uint64_t result, __int128 *a2)
{
  v2 = *(result + 8);
  v3 = *result;
  if (v2 >= *(result + 12))
  {
    if (v3 > a2 || v3 + 16 * v2 <= a2)
    {
      llvm::SmallVectorTemplateBase<std::shared_ptr<mlir::anec::ANECIROutput>,false>::grow();
    }

    llvm::SmallVectorTemplateBase<std::shared_ptr<mlir::anec::ANECIROutput>,false>::grow();
  }

  v4 = *(result + 8);
  v5 = *a2;
  *(v3 + 16 * v4) = *a2;
  if (*(&v5 + 1))
  {
    atomic_fetch_add_explicit((*(&v5 + 1) + 8), 1uLL, memory_order_relaxed);
    LODWORD(v4) = *(result + 8);
  }

  *(result + 8) = v4 + 1;
  return result;
}

char **llvm::SmallVector<llvm::vfs::directory_iterator,2u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = v2 - 8;
    v5 = 16 * v3;
    do
    {
      v6 = *&v4[v5];
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }

      v5 -= 16;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

double llvm::vfs::RedirectingFileSystem::setOverlayFileDir(uint64_t a1, const void *a2, size_t a3)
{
  if (a2)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (a3 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v7) = a3;
    if (a3)
    {
      memmove(&__dst, a2, a3);
    }

    *(&__dst + a3) = 0;
    if (*(a1 + 95) < 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    __dst = 0uLL;
    v7 = 0;
    if (*(a1 + 95) < 0)
    {
LABEL_11:
      operator delete(*(a1 + 72));
    }
  }

  result = *&__dst;
  *(a1 + 72) = __dst;
  *(a1 + 88) = v7;
  return result;
}

char *llvm::vfs::RedirectingFileSystem::getOverlayFileDir(llvm::vfs::RedirectingFileSystem *this)
{
  v3 = *(this + 9);
  v1 = this + 72;
  v2 = v3;
  if (v1[23] >= 0)
  {
    return v1;
  }

  return v2;
}

uint64_t llvm::vfs::RedirectingFileSystem::setFallthrough(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = 2;
  }

  *(this + 104) = v2;
  return this;
}

void llvm::vfs::RedirectingFileSystem::getRoots(llvm::vfs::RedirectingFileSystem *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(this + 2);
  v4 = *(this + 3);
  if (v4 != v3)
  {
    if (!((v4 - v3) >> 60))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  while (v3 != v4)
  {
    v5 = *v3++;
    v6 = v5 + 16;
    v7 = *(v5 + 16);
    v8 = *(v5 + 39);
    if (v8 >= 0)
    {
      v7 = v6;
    }

    v9 = *(v6 + 8);
    if (v8 >= 0)
    {
      v9 = v8;
    }

    *&v10 = v7;
    *(&v10 + 1) = v9;
    std::vector<llvm::StringRef>::push_back[abi:nn200100](a2, &v10);
  }
}

void *llvm::vfs::RedirectingFileSystem::printImpl(uint64_t a1, llvm::raw_ostream *this, int a3, int a4)
{
  if (a4)
  {
    v8 = a4;
    do
    {
      while (1)
      {
        v9 = *(this + 4);
        if (*(this + 3) - v9 > 1uLL)
        {
          break;
        }

        llvm::raw_ostream::write(this, "  ", 2uLL);
        if (!--v8)
        {
          goto LABEL_6;
        }
      }

      *v9 = 8224;
      *(this + 4) += 2;
      --v8;
    }

    while (v8);
  }

LABEL_6:
  v10 = *(this + 4);
  if (*(this + 3) - v10 > 0x28uLL)
  {
    qmemcpy(v10, "RedirectingFileSystem (UseExternalNames: ", 41);
    v12 = (*(this + 4) + 41);
    *(this + 4) = v12;
    v11 = this;
  }

  else
  {
    v11 = llvm::raw_ostream::write(this, "RedirectingFileSystem (UseExternalNames: ", 0x29uLL);
    v12 = *(v11 + 4);
  }

  if (*(a1 + 98))
  {
    v13 = "true";
  }

  else
  {
    v13 = "false";
  }

  if (*(a1 + 98))
  {
    v14 = 4;
  }

  else
  {
    v14 = 5;
  }

  if (v14 > *(v11 + 3) - v12)
  {
    result = llvm::raw_ostream::write(v11, v13, v14);
    v16 = result[4];
    if (result[3] - v16 > 1uLL)
    {
      goto LABEL_17;
    }

LABEL_28:
    result = llvm::raw_ostream::write(result, ")\n", 2uLL);
    if (!a3)
    {
      return result;
    }

    goto LABEL_18;
  }

  v23 = v11;
  memcpy(v12, v13, v14);
  result = v23;
  v16 = (*(v23 + 4) + v14);
  *(v23 + 4) = v16;
  if (*(v23 + 3) - v16 <= 1uLL)
  {
    goto LABEL_28;
  }

LABEL_17:
  *v16 = 2601;
  result[4] += 2;
  if (!a3)
  {
    return result;
  }

LABEL_18:
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  while (v17 != v18)
  {
    v19 = *v17++;
    llvm::vfs::RedirectingFileSystem::printEntry(a1, this, v19, a4);
  }

  if (a4)
  {
    v20 = a4;
    do
    {
      while (1)
      {
        v21 = *(this + 4);
        if (*(this + 3) - v21 <= 1uLL)
        {
          break;
        }

        *v21 = 8224;
        *(this + 4) += 2;
        if (!--v20)
        {
          goto LABEL_25;
        }
      }

      llvm::raw_ostream::write(this, "  ", 2uLL);
      --v20;
    }

    while (v20);
  }

LABEL_25:
  v22 = *(this + 4);
  if ((*(this + 3) - v22) > 0xB)
  {
    *(v22 + 8) = 171594566;
    *v22 = *"ExternalFS:\n";
    *(this + 4) += 12;
  }

  else
  {
    llvm::raw_ostream::write(this, "ExternalFS:\n", 0xCuLL);
  }

  v24 = *(**(a1 + 64) + 136);

  return v24();
}

llvm::raw_ostream *llvm::vfs::RedirectingFileSystem::printEntry(llvm::vfs::RedirectingFileSystem *this, llvm::raw_ostream *a2, llvm::vfs::RedirectingFileSystem::Entry *a3, int a4)
{
  if (a4)
  {
    v8 = a4;
    do
    {
      while (1)
      {
        v9 = *(a2 + 4);
        if (*(a2 + 3) - v9 > 1uLL)
        {
          break;
        }

        llvm::raw_ostream::write(a2, "  ", 2uLL);
        if (!--v8)
        {
          goto LABEL_6;
        }
      }

      *v9 = 8224;
      *(a2 + 4) += 2;
      --v8;
    }

    while (v8);
  }

LABEL_6:
  v10 = *(a2 + 4);
  if (*(a2 + 3) == v10)
  {
    result = llvm::raw_ostream::write(a2, "'", 1uLL);
    v11 = *(result + 4);
  }

  else
  {
    *v10 = 39;
    v11 = (*(a2 + 4) + 1);
    *(a2 + 4) = v11;
    result = a2;
  }

  v13 = *(a3 + 39);
  if (v13 >= 0)
  {
    v14 = a3 + 16;
  }

  else
  {
    v14 = *(a3 + 2);
  }

  if (v13 >= 0)
  {
    v15 = *(a3 + 39);
  }

  else
  {
    v15 = *(a3 + 3);
  }

  if (v15 <= *(result + 3) - v11)
  {
    if (v15)
    {
      v16 = result;
      v17 = v15;
      memcpy(v11, v14, v15);
      result = v16;
      v11 = (*(v16 + 4) + v17);
      *(v16 + 4) = v11;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(result, v14, v15);
    v11 = *(result + 4);
  }

  if (*(result + 3) == v11)
  {
    result = llvm::raw_ostream::write(result, "'", 1uLL);
    v18 = *(a3 + 2);
    if ((v18 - 1) < 2)
    {
LABEL_21:
      v19 = *(a2 + 4);
      if ((*(a2 + 3) - v19) > 4)
      {
        *(v19 + 4) = 39;
        *v19 = 540945696;
        v20 = (*(a2 + 4) + 5);
        *(a2 + 4) = v20;
        result = a2;
      }

      else
      {
        result = llvm::raw_ostream::write(a2, " -> '", 5uLL);
        v20 = *(result + 4);
      }

      v24 = *(a3 + 63);
      if (v24 >= 0)
      {
        v25 = a3 + 40;
      }

      else
      {
        v25 = *(a3 + 5);
      }

      if (v24 >= 0)
      {
        v26 = *(a3 + 63);
      }

      else
      {
        v26 = *(a3 + 6);
      }

      if (v26 <= *(result + 3) - v20)
      {
        if (v26)
        {
          v27 = result;
          v28 = v26;
          memcpy(v20, v25, v26);
          result = v27;
          v20 = (*(v27 + 4) + v28);
          *(v27 + 4) = v20;
        }
      }

      else
      {
        result = llvm::raw_ostream::write(result, v25, v26);
        v20 = *(result + 4);
      }

      if (*(result + 3) == v20)
      {
        result = llvm::raw_ostream::write(result, "'", 1uLL);
        v29 = *(a3 + 16);
        if (v29 != 2)
        {
LABEL_41:
          if (v29 == 1)
          {
            v30 = *(a2 + 4);
            if (*(a2 + 3) - v30 > 0x17uLL)
            {
              qmemcpy(v30, " (UseExternalName: true)", 24);
              *(a2 + 4) += 24;
              v31 = *(a2 + 4);
              if (*(a2 + 3) == v31)
              {
                goto LABEL_57;
              }
            }

            else
            {
              result = llvm::raw_ostream::write(a2, " (UseExternalName: true)", 0x18uLL);
              v31 = *(a2 + 4);
              if (*(a2 + 3) == v31)
              {
                goto LABEL_57;
              }
            }

LABEL_49:
            *v31 = 10;
            ++*(a2 + 4);
            return result;
          }

          goto LABEL_48;
        }
      }

      else
      {
        *v20 = 39;
        ++*(result + 4);
        v29 = *(a3 + 16);
        if (v29 != 2)
        {
          goto LABEL_41;
        }
      }

      v32 = *(a2 + 4);
      if (*(a2 + 3) - v32 > 0x18uLL)
      {
        qmemcpy(v32, " (UseExternalName: false)", 25);
        *(a2 + 4) += 25;
        v31 = *(a2 + 4);
        if (*(a2 + 3) != v31)
        {
          goto LABEL_49;
        }

        goto LABEL_57;
      }

      result = llvm::raw_ostream::write(a2, " (UseExternalName: false)", 0x19uLL);
LABEL_48:
      v31 = *(a2 + 4);
      if (*(a2 + 3) != v31)
      {
        goto LABEL_49;
      }

LABEL_57:

      return llvm::raw_ostream::write(a2, "\n", 1uLL);
    }
  }

  else
  {
    *v11 = 39;
    ++*(result + 4);
    v18 = *(a3 + 2);
    if ((v18 - 1) < 2)
    {
      goto LABEL_21;
    }
  }

  if (v18)
  {
    return result;
  }

  v21 = *(a2 + 4);
  if (*(a2 + 3) == v21)
  {
    result = llvm::raw_ostream::write(a2, "\n", 1uLL);
    v23 = *(a3 + 5);
    v22 = *(a3 + 6);
    if (v23 == v22)
    {
      return result;
    }
  }

  else
  {
    *v21 = 10;
    ++*(a2 + 4);
    v23 = *(a3 + 5);
    v22 = *(a3 + 6);
    if (v23 == v22)
    {
      return result;
    }
  }

  do
  {
    v33 = *v23++;
    result = llvm::vfs::RedirectingFileSystem::printEntry(this, a2, v33, a4 + 1);
  }

  while (v23 != v22);
  return result;
}

uint64_t llvm::vfs::RedirectingFileSystem::visitChildFileSystems(uint64_t result, void (*a2)(uint64_t), uint64_t a3)
{
  if (*(result + 64))
  {
    v3 = result;
    a2(a3);
    v4 = *(**(v3 + 64) + 128);

    return v4();
  }

  return result;
}

void llvm::vfs::RedirectingFileSystem::create(llvm::MemoryBuffer **a1)
{
  v4 = *MEMORY[0x277D85DE8];
  llvm::SourceMgr::SourceMgr(v2);
  llvm::MemoryBuffer::getMemBufferRef(*a1, &__str);
  llvm::yaml::Stream::Stream();
}

uint64_t llvm::vfs::RedirectingFileSystemParser::parse(llvm ****this, llvm::yaml::Node *a2, llvm::vfs::RedirectingFileSystem *a3)
{
  v69 = *MEMORY[0x277D85DE8];
  if (a2 && *(a2 + 8) == 4)
  {
    *&v49 = "version";
    *(&v49 + 1) = 7;
    v50 = 1;
    *&v51 = "case-sensitive";
    *(&v51 + 1) = 14;
    v52 = 0;
    *&v53 = "use-external-names";
    *(&v53 + 1) = 18;
    v54 = 0;
    *&v55 = "root-relative";
    *(&v55 + 1) = 13;
    v56 = 0;
    *&v57 = "overlay-relative";
    *(&v57 + 1) = 16;
    v58 = 0;
    *&v59 = "fallthrough";
    *(&v59 + 1) = 11;
    v60 = 0;
    *&v61 = "redirecting-with";
    *(&v61 + 1) = 16;
    v62 = 0;
    *&v63 = "roots";
    *(&v63 + 1) = 5;
    v64 = 1;
    v45 = 16;
    buffer = llvm::allocate_buffer(0x180uLL, 8uLL);
    v43 = buffer;
    v44 = 0;
    *buffer = xmmword_25736B6D0;
    *(buffer + 24) = xmmword_25736B6D0;
    buffer[3] = xmmword_25736B6D0;
    *(buffer + 72) = xmmword_25736B6D0;
    buffer[6] = xmmword_25736B6D0;
    *(buffer + 120) = xmmword_25736B6D0;
    buffer[9] = xmmword_25736B6D0;
    *(buffer + 168) = xmmword_25736B6D0;
    buffer[12] = xmmword_25736B6D0;
    *(buffer + 216) = xmmword_25736B6D0;
    buffer[15] = xmmword_25736B6D0;
    *(buffer + 264) = xmmword_25736B6D0;
    buffer[18] = xmmword_25736B6D0;
    *(buffer + 312) = xmmword_25736B6D0;
    buffer[21] = xmmword_25736B6D0;
    *(buffer + 360) = xmmword_25736B6D0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>,llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>::try_emplace<llvm::vfs::RedirectingFileSystemParser::KeyStatus const&>(&v43, &v49, &v50, &v46);
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>,llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>::try_emplace<llvm::vfs::RedirectingFileSystemParser::KeyStatus const&>(&v43, &v51, &v52, &v46);
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>,llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>::try_emplace<llvm::vfs::RedirectingFileSystemParser::KeyStatus const&>(&v43, &v53, &v54, &v46);
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>,llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>::try_emplace<llvm::vfs::RedirectingFileSystemParser::KeyStatus const&>(&v43, &v55, &v56, &v46);
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>,llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>::try_emplace<llvm::vfs::RedirectingFileSystemParser::KeyStatus const&>(&v43, &v57, &v58, &v46);
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>,llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>::try_emplace<llvm::vfs::RedirectingFileSystemParser::KeyStatus const&>(&v43, &v59, &v60, &v46);
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>,llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>::try_emplace<llvm::vfs::RedirectingFileSystemParser::KeyStatus const&>(&v43, &v61, &v62, &v46);
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>,llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>::try_emplace<llvm::vfs::RedirectingFileSystemParser::KeyStatus const&>(&v43, &v63, &v64, &v46);
    *(a2 + 76) = 0;
    llvm::yaml::MappingNode::increment(a2);
    if (!*(a2 + 10))
    {
LABEL_63:
      if ((llvm::yaml::Stream::failed(*this) & 1) == 0 && v44)
      {
        if (v45)
        {
          v28 = 24 * v45;
          v29 = v43;
          while (*v29 >= 0xFFFFFFFFFFFFFFFELL)
          {
            v29 = (v29 + 24);
            v28 -= 24;
            if (!v28)
            {
              goto LABEL_75;
            }
          }
        }

        else
        {
          v29 = v43;
        }

        v34 = (v43 + 24 * v45);
LABEL_78:
        if (v29 != v34)
        {
          if (*(v29 + 16) == 1 && *(v29 + 17) != 1)
          {
            v39 = *v29;
            v38 = *(v29 + 1);
            v65 = "missing key '";
            *(&v66 + 1) = v39;
            v67 = v38;
            v68 = 1283;
            *&v46 = &v65;
            v47 = "'";
            v48 = 770;
            llvm::yaml::Stream::printError(*this, a2, &v46, 0);
          }

          else
          {
            while (1)
            {
              v29 = (v29 + 24);
              if (v29 == v34)
              {
                break;
              }

              if (*v29 < 0xFFFFFFFFFFFFFFFELL)
              {
                goto LABEL_78;
              }
            }
          }
        }
      }

      goto LABEL_75;
    }

    while (1)
    {
      v7 = *(a2 + 10);
      v65 = &v67;
      v66 = xmmword_25739DC40;
      Key = llvm::yaml::KeyValueNode::getKey(v7);
      if (Key)
      {
        v9 = *(Key + 8) == 1;
      }

      else
      {
        v9 = 0;
      }

      if (!v9)
      {
        *&v46 = "expected string";
        v48 = 259;
        v30 = Key;
        v31 = *this;
        goto LABEL_72;
      }

      Value = llvm::yaml::ScalarNode::getValue(Key, &v65);
      v12 = v11;
      v13 = llvm::yaml::KeyValueNode::getKey(v7);
      if (!llvm::vfs::RedirectingFileSystemParser::checkDuplicateOrUnknownKey(this, v13, Value, v12, &v43))
      {
        goto LABEL_73;
      }

      if (v12 > 13)
      {
        if (v12 == 14)
        {
          if (!memcmp(Value, "case-sensitive", 0xEuLL))
          {
            v16 = llvm::yaml::KeyValueNode::getValue(v7);
            v17 = a3 + 96;
            goto LABEL_57;
          }

          goto LABEL_49;
        }

        if (v12 != 16)
        {
          if (v12 == 18 && !memcmp(Value, "use-external-names", 0x12uLL))
          {
            v16 = llvm::yaml::KeyValueNode::getValue(v7);
            v17 = a3 + 98;
            goto LABEL_57;
          }

LABEL_49:
          v24 = llvm::yaml::KeyValueNode::getValue(v7);
          v25 = llvm::vfs::RedirectingFileSystemParser::parseRootRelativeKind(this, v24);
          if ((v25 & 0x100000000) == 0)
          {
            v30 = llvm::yaml::KeyValueNode::getValue(v7);
            v32 = "expected valid root-relative kind";
            goto LABEL_71;
          }

          *(a3 + 27) = v25;
          goto LABEL_51;
        }

        if (!memcmp(Value, "overlay-relative", 0x10uLL))
        {
          v16 = llvm::yaml::KeyValueNode::getValue(v7);
          v17 = a3 + 97;
LABEL_57:
          if ((llvm::vfs::RedirectingFileSystemParser::parseScalarBool(this, v16, v17) & 1) == 0)
          {
            goto LABEL_73;
          }

          goto LABEL_51;
        }

        if (memcmp(Value, "redirecting-with", 0x10uLL))
        {
          goto LABEL_49;
        }

        *&v46 = "fallthrough";
        *(&v46 + 1) = 11;
        v26 = *(llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>,llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>::operator[](&v43, &v46) + 1);
        v30 = llvm::yaml::KeyValueNode::getValue(v7);
        if (v26 == 1)
        {
          goto LABEL_86;
        }

        v27 = llvm::vfs::RedirectingFileSystemParser::parseRedirectKind(this, v30);
        if ((v27 & 0x100000000) == 0)
        {
          v30 = llvm::yaml::KeyValueNode::getValue(v7);
          v32 = "expected valid redirect kind";
          goto LABEL_71;
        }

        *(a3 + 26) = v27;
      }

      else if (v12 == 5)
      {
        if (*Value != 1953460082 || Value[4] != 115)
        {
          goto LABEL_49;
        }

        v19 = llvm::yaml::KeyValueNode::getValue(v7);
        if (!v19 || (v20 = v19, *(v19 + 8) != 5))
        {
          v30 = llvm::yaml::KeyValueNode::getValue(v7);
          v32 = "expected array";
          goto LABEL_71;
        }

        *(v19 + 76) = 0;
        llvm::yaml::SequenceNode::increment(v19);
        if (v20[10])
        {
          llvm::vfs::RedirectingFileSystemParser::parseEntry(this, v20[10], a3, 1, &v46);
          if (v46)
          {
            operator new();
          }

LABEL_73:
          if (v65 != &v67)
          {
            free(v65);
          }

LABEL_75:
          llvm::deallocate_buffer(v43, (24 * v45));
        }
      }

      else if (v12 == 7)
      {
        if (memcmp(Value, "version", 7uLL))
        {
          goto LABEL_49;
        }

        v40 = &v42;
        v41 = xmmword_25736EFF0;
        v21 = llvm::yaml::KeyValueNode::getValue(v7);
        if (!v21 || *(v21 + 8) != 1)
        {
          *&v46 = "expected string";
          v48 = 259;
          v35 = v21;
          v37 = *this;
          goto LABEL_92;
        }

        v22 = llvm::yaml::ScalarNode::getValue(v21, &v40);
        *&v46 = 0;
        if (llvm::getAsSignedInteger(v22, v23, 0xA, &v46) || v46 != v46)
        {
          v35 = llvm::yaml::KeyValueNode::getValue(v7);
          v36 = "expected integer";
LABEL_91:
          *&v46 = v36;
          v48 = 259;
          v37 = *this;
LABEL_92:
          llvm::yaml::Stream::printError(v37, v35, &v46, 0);
          if (v40 != &v42)
          {
            free(v40);
          }

          goto LABEL_73;
        }

        if ((v46 & 0x80000000) != 0)
        {
          v35 = llvm::yaml::KeyValueNode::getValue(v7);
          v36 = "invalid version number";
          goto LABEL_91;
        }

        if (v46)
        {
          v35 = llvm::yaml::KeyValueNode::getValue(v7);
          v36 = "version mismatch, expected 0";
          goto LABEL_91;
        }

        if (v40 != &v42)
        {
          free(v40);
        }
      }

      else
      {
        if (v12 != 11 || memcmp(Value, "fallthrough", 0xBuLL))
        {
          goto LABEL_49;
        }

        *&v46 = "redirecting-with";
        *(&v46 + 1) = 16;
        if (*(llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>,llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>::operator[](&v43, &v46) + 1) == 1)
        {
          v30 = llvm::yaml::KeyValueNode::getValue(v7);
LABEL_86:
          v32 = "'fallthrough' and 'redirecting-with' are mutually exclusive";
LABEL_71:
          *&v46 = v32;
          v48 = 259;
          v31 = *this;
LABEL_72:
          llvm::yaml::Stream::printError(v31, v30, &v46, 0);
          goto LABEL_73;
        }

        LOBYTE(v46) = 0;
        v14 = llvm::yaml::KeyValueNode::getValue(v7);
        if (!llvm::vfs::RedirectingFileSystemParser::parseScalarBool(this, v14, &v46))
        {
          goto LABEL_73;
        }

        if (v46)
        {
          v15 = 0;
        }

        else
        {
          v15 = 2;
        }

        *(a3 + 26) = v15;
      }

LABEL_51:
      if (v65 != &v67)
      {
        free(v65);
      }

      llvm::yaml::MappingNode::increment(a2);
      if (!*(a2 + 10))
      {
        goto LABEL_63;
      }
    }
  }

  *&v49 = "expected mapping node";
  WORD4(v51) = 259;
  llvm::yaml::Stream::printError(*this, a2, &v49, 0);
  return 0;
}

uint64_t llvm::vfs::RedirectingFileSystemParser::lookupOrCreateEntry(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if (*(a4 + 8))
    {
      v6 = 0;
    }

    else
    {
      v6 = a4;
    }

    v7 = *(v6 + 40);
    v8 = *(v6 + 48);
    if (v7 != v8)
    {
      if (a3)
      {
        while (1)
        {
          v9 = *v7;
          if (*v7 && *(*v7 + 8) == 0)
          {
            v11 = *(v9 + 39);
            v12 = v11;
            if ((v11 & 0x80u) != 0)
            {
              v11 = *(v9 + 24);
            }

            if (a3 == v11)
            {
              v13 = v12 >= 0 ? (v9 + 16) : *(v9 + 16);
              if (!memcmp(a2, v13, a3))
              {
                break;
              }
            }
          }

          if (++v7 == v8)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        while (1)
        {
          v9 = *v7;
          if (*v7 && *(*v7 + 8) == 0)
          {
            v15 = *(v9 + 39);
            if ((v15 & 0x80u) != 0)
            {
              v15 = *(v9 + 24);
            }

            if (!v15)
            {
              break;
            }
          }

          if (++v7 == v8)
          {
            goto LABEL_49;
          }
        }
      }

      return v9;
    }

LABEL_49:
    v26 = 257;
    v22 = (atomic_fetch_add(llvm::vfs::getNextVirtualUniqueID(void)::UID, 1u) + 1);
    v23 = 1000 * std::chrono::system_clock::now().__d_.__rep_;
    llvm::Twine::str(&v25, __p);
    __p[3] = -1;
    __p[4] = v22;
    v29 = 0;
    v28 = v23;
    v30 = 0x1FF00000003;
    v31 = 0;
    operator new();
  }

  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  if (v16 == v17)
  {
    goto LABEL_49;
  }

  if (a3)
  {
    while (1)
    {
      v9 = *v16;
      v18 = *(*v16 + 39);
      v19 = v18;
      if ((v18 & 0x80u) != 0)
      {
        v18 = *(*v16 + 24);
      }

      if (a3 == v18)
      {
        v20 = v19 >= 0 ? (v9 + 16) : *(v9 + 16);
        if (!memcmp(a2, v20, a3))
        {
          break;
        }
      }

      if (++v16 == v17)
      {
        goto LABEL_49;
      }
    }
  }

  else
  {
    while (1)
    {
      v9 = *v16;
      v21 = *(*v16 + 39);
      if ((v21 & 0x80u) != 0)
      {
        v21 = *(*v16 + 24);
      }

      if (!v21)
      {
        break;
      }

      if (++v16 == v17)
      {
        goto LABEL_49;
      }
    }
  }

  return v9;
}

uint64_t llvm::vfs::RedirectingFileSystem::LookupResult::LookupResult(uint64_t a1, uint64_t a2, __int128 *a3, _OWORD *a4)
{
  v29[32] = *MEMORY[0x277D85DE8];
  *a1 = a1 + 16;
  *(a1 + 8) = 0x2000000000;
  *(a1 + 272) = a2;
  *(a1 + 280) = 0;
  *(a1 + 304) = 0;
  if (!a2 || *(a2 + 8) != 1)
  {
    return a1;
  }

  v8 = *(a2 + 63);
  if (v8 >= 0)
  {
    v9 = (a2 + 40);
  }

  else
  {
    v9 = *(a2 + 40);
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 63);
  }

  else
  {
    v10 = *(a2 + 48);
  }

  __src = v29;
  *__len = xmmword_25736B790;
  if (v10 >= 0x101)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v11 = 0;
  if (v10)
  {
    memcpy(__src, v9, v10);
    v11 = __len[0];
  }

  __len[0] = v11 + v10;
  v12 = a3[1];
  __dst = *a3;
  v24 = v12;
  v25 = a3[2];
  v13 = a4[1];
  v22[0] = *a4;
  v22[1] = v13;
  v22[2] = a4[2];
  v14 = *(a2 + 63);
  v15 = *(a2 + 40);
  if (v14 >= 0)
  {
    v15 = a2 + 40;
  }

  if (v14 < 0)
  {
    v14 = *(a2 + 48);
  }

  v26[0] = v15;
  v26[1] = v14;
  first_of = llvm::StringRef::find_first_of(v26, "/\", 2, 0);
  if (first_of == -1)
  {
    v17 = 0;
  }

  else if (*(v26[0] + first_of) == 47)
  {
    v17 = 1;
  }

  else
  {
    v17 = 3;
  }

  llvm::sys::path::append(&__src, &__dst, v22, v17);
  v18 = __len[0];
  if (__len[0] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len[0] >= 0x17)
  {
    operator new();
  }

  BYTE7(v24) = __len[0];
  if (!__len[0])
  {
    v19 = a1 + 280;
    LOBYTE(__dst) = 0;
    if (*(a1 + 304) == 1)
    {
      goto LABEL_26;
    }

LABEL_32:
    *v19 = __dst;
    *(v19 + 16) = v24;
    *(a1 + 304) = 1;
    v20 = __src;
    if (__src == v29)
    {
      return a1;
    }

LABEL_33:
    free(v20);
    return a1;
  }

  memmove(&__dst, __src, __len[0]);
  v19 = a1 + 280;
  *(&__dst + v18) = 0;
  if (*(a1 + 304) != 1)
  {
    goto LABEL_32;
  }

LABEL_26:
  if (*(a1 + 303) < 0)
  {
    operator delete(*v19);
  }

  *v19 = __dst;
  *(v19 + 16) = v24;
  v20 = __src;
  if (__src != v29)
  {
    goto LABEL_33;
  }

  return a1;
}

void llvm::vfs::RedirectingFileSystem::LookupResult::getPath(uint64_t a1, void *a2)
{
  a2[1] = 0;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *a1;
    v6 = 8 * v4;
    do
    {
      v7 = *v5++;
      v8 = (v7 + 16);
      v9 = *(v7 + 16);
      v10 = *(v7 + 39);
      if (v10 >= 0)
      {
        v9 = v8;
      }

      v11 = v8[1];
      if (v10 >= 0)
      {
        v11 = v10;
      }

      v26 = 261;
      v24 = v9;
      v25 = v11;
      v23 = 257;
      v21 = 257;
      v19 = 257;
      llvm::sys::path::append(a2, &v24, v22, v20, v18);
      v6 -= 8;
    }

    while (v6);
  }

  v12 = *(a1 + 272);
  v15 = *(v12 + 16);
  v13 = v12 + 16;
  v14 = v15;
  v16 = *(v13 + 23);
  if (v16 >= 0)
  {
    v14 = v13;
  }

  v17 = *(v13 + 8);
  if (v16 >= 0)
  {
    v17 = v16;
  }

  v26 = 261;
  v24 = v14;
  v25 = v17;
  v23 = 257;
  v21 = 257;
  v19 = 257;
  llvm::sys::path::append(a2, &v24, v22, v20, v18);
}

uint64_t llvm::vfs::RedirectingFileSystem::makeCanonicalForLookup(uint64_t a1, uint64_t a2)
{
  v12[32] = *MEMORY[0x277D85DE8];
  v3 = (*(*a1 + 112))(a1);
  v4 = HIDWORD(v3);
  v5 = v3;
  if (!v3)
  {
    v6 = __n;
    if (!__n)
    {
      v5 = 22;
      std::generic_category();
      v4 = 0;
      v8 = __src;
      if (__src == v12)
      {
        return v5 | (v4 << 32);
      }

      goto LABEL_6;
    }

    v7 = __src;
    *(a2 + 8) = 0;
    if (*(a2 + 16) < v6)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    memcpy(*a2, v7, v6);
    *(a2 + 8) += v6;
    std::system_category();
    v5 = 0;
    v8 = __src;
    if (__src != v12)
    {
LABEL_6:
      free(v8);
    }
  }

  return v5 | (v4 << 32);
}

uint64_t anonymous namespace::canonicalize(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  v13[0] = a2;
  v13[1] = a3;
  first_of = llvm::StringRef::find_first_of(v13, "/\", 2, 0);
  if (first_of == -1)
  {
    v7 = 0;
  }

  else if (*(v13[0] + first_of) == 47)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  v9 = llvm::sys::path::remove_leading_dotslash(a2, a3, v7);
  v10 = v8;
  *a1 = a1 + 24;
  *(a1 + 8) = xmmword_25736B790;
  if (v8 >= 0x101)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v11 = 0;
  if (v8)
  {
    memcpy(*a1, v9, v8);
    v11 = *(a1 + 8);
  }

  *(a1 + 8) = v11 + v10;
  return llvm::sys::path::remove_dots(a1, 1, v7);
}

void llvm::vfs::RedirectingFileSystem::lookupPathImpl(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void **a6@<X8>)
{
  v50 = *MEMORY[0x277D85DE8];
  v12 = *(a4 + 39);
  if (v12 >= 0)
  {
    v13 = (a4 + 16);
  }

  else
  {
    v13 = *(a4 + 16);
  }

  if (v12 >= 0)
  {
    v14 = *(a4 + 39);
  }

  else
  {
    v14 = *(a4 + 24);
  }

  if (!v14)
  {
    goto LABEL_30;
  }

  v16 = *(a2 + 16);
  v15 = *(a2 + 24);
  __src[0] = v16;
  __src[1] = v15;
  if (*(a1 + 96) != 1)
  {
    if (v15 == v14)
    {
      if (!llvm::StringRef::compare_insensitive(__src, v13, v14))
      {
        goto LABEL_23;
      }

      v16 = __src[0];
      v15 = __src[1];
    }

LABEL_15:
    if (v15 == 1)
    {
      v18 = *v16;
      if (v18 == 47)
      {
        if (v14 == 1 && *v13 == 92)
        {
          goto LABEL_23;
        }
      }

      else if (v14 == 1 && v18 == 92 && *v13 == 47)
      {
        goto LABEL_23;
      }
    }

    v24 = std::generic_category();
    v26 = *(a6 + 312) | 1;
LABEL_34:
    *(a6 + 312) = v26;
    v25 = 2;
    goto LABEL_35;
  }

  if (v15 != v14)
  {
    goto LABEL_15;
  }

  v17 = memcmp(v16, v13, v14);
  v15 = v14;
  if (v17)
  {
    goto LABEL_15;
  }

LABEL_23:
  llvm::sys::path::const_iterator::operator++(a2);
  if (llvm::sys::path::const_iterator::operator==(a2, a3))
  {
    v19 = *(a2 + 16);
    v41 = *a2;
    v42 = v19;
    v43 = *(a2 + 32);
    v20 = a3[1];
    v38 = *a3;
    v39 = v20;
    v40 = a3[2];
    llvm::vfs::RedirectingFileSystem::LookupResult::LookupResult(__src, a4, &v41, &v38);
    *(a6 + 312) &= ~1u;
    *a6 = a6 + 2;
    a6[1] = 0x2000000000;
    v21 = __src[1];
    if (!LODWORD(__src[1]) || __src == a6)
    {
      goto LABEL_42;
    }

    v22 = __src[0];
    if (__src[0] == v45)
    {
      goto LABEL_27;
    }

    goto LABEL_40;
  }

LABEL_30:
  v23 = *(a4 + 8);
  if (v23 == 1)
  {
    v27 = *(a2 + 16);
    v41 = *a2;
    v42 = v27;
    v43 = *(a2 + 32);
    v28 = a3[1];
    v38 = *a3;
    v39 = v28;
    v40 = a3[2];
    llvm::vfs::RedirectingFileSystem::LookupResult::LookupResult(__src, a4, &v41, &v38);
    *(a6 + 312) &= ~1u;
    *a6 = a6 + 2;
    a6[1] = 0x2000000000;
    v21 = __src[1];
    if (!LODWORD(__src[1]) || __src == a6)
    {
      goto LABEL_42;
    }

    v22 = __src[0];
    if (__src[0] == v45)
    {
LABEL_27:
      if (v21 >= 0x21)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(*a6, __src[0], 8 * v21);
      *(a6 + 2) = v21;
      goto LABEL_41;
    }

LABEL_40:
    *a6 = v22;
    v29 = HIDWORD(__src[1]);
    *(a6 + 2) = v21;
    *(a6 + 3) = v29;
    __src[0] = v45;
    HIDWORD(__src[1]) = 0;
LABEL_41:
    LODWORD(__src[1]) = 0;
LABEL_42:
    a6[34] = v46;
    *(a6 + 280) = 0;
    *(a6 + 304) = 0;
    if (v49 == 1)
    {
      a6[37] = v48;
      *(a6 + 35) = v47;
      v48 = 0;
      v47 = 0uLL;
      *(a6 + 304) = 1;
    }

    if (__src[0] != v45)
    {
      free(__src[0]);
    }

    return;
  }

  if (v23 == 2)
  {
    v24 = std::generic_category();
    *(a6 + 312) |= 1u;
    v25 = 20;
LABEL_35:
    *a6 = v25;
    a6[1] = v24;
    return;
  }

  v30 = *(a4 + 40);
  v37 = *(a4 + 48);
  if (v30 == v37)
  {
    v34 = *(a6 + 312);
    v24 = std::generic_category();
LABEL_56:
    v26 = v34 | 1;
    goto LABEL_34;
  }

  v31 = *(a5 + 8);
  while (1)
  {
    if (v31 >= *(a5 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a5 + 8 * v31) = a4;
    ++*(a5 + 8);
    v32 = *(a2 + 16);
    *__src = *a2;
    v45[0] = v32;
    v45[1] = *(a2 + 32);
    v33 = a3[1];
    v41 = *a3;
    v42 = v33;
    v43 = a3[2];
    llvm::vfs::RedirectingFileSystem::lookupPathImpl(a1, __src, &v41, *v30, a5);
    v34 = *(a6 + 312);
    if ((v34 & 1) == 0)
    {
      break;
    }

    v35 = *a6;
    v36 = a6[1];
    v24 = std::generic_category();
    if (v36 != v24 || v35 != 2)
    {
      break;
    }

    v31 = *(a5 + 8) - 1;
    *(a5 + 8) = v31;
    if (++v30 == v37)
    {
      goto LABEL_56;
    }
  }
}

double getRedirectedFileStatus(uint64_t a1, llvm::formatv_object_base **a2, char a3, uint64_t a4)
{
  if (*(a4 + 72) == 1)
  {
    *a1 = *a4;
    *(a1 + 16) = *(a4 + 16);
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = 0;
    *(a1 + 24) = *(a4 + 24);
    *(a1 + 40) = *(a4 + 40);
    v5 = *(a4 + 56);
    *(a1 + 56) = v5;
    v6 = *(a4 + 72);
LABEL_8:
    *(a1 + 72) = v6;
    return *&v5;
  }

  if (*(a4 + 23) < 0)
  {
    v7 = a2;
    v8 = a3;
    v9 = a4;
    std::string::__init_copy_ctor_external(a1, *a4, *(a4 + 8));
    a3 = v8;
    a2 = v7;
    a4 = v9;
  }

  else
  {
    *a1 = *a4;
    *(a1 + 16) = *(a4 + 16);
  }

  *(a1 + 24) = *(a4 + 24);
  *(a1 + 40) = *(a4 + 40);
  v5 = *(a4 + 56);
  *(a1 + 56) = v5;
  *(a1 + 72) = *(a4 + 72);
  if (a3)
  {
    v6 = 1;
    goto LABEL_8;
  }

  v15 = *(a1 + 24);
  v10 = *(a1 + 40);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 48);
  llvm::Twine::str(a2, &v16);
  v18 = v15;
  *&v19 = v10;
  *(&v19 + 1) = v13;
  *&v20 = v11;
  *(&v20 + 1) = v12;
  v21 = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v16;
  *(a1 + 16) = v17;
  *(a1 + 24) = v18;
  *(a1 + 40) = v19;
  *&v5 = v20;
  *(a1 + 56) = v20;
  *(a1 + 72) = v21;
  return *&v5;
}

void llvm::vfs::RedirectingFileSystem::getExternalStatus(llvm::vfs::RedirectingFileSystem *this@<X0>, llvm::formatv_object_base **a2@<X2>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  (*(**(this + 8) + 40))(__p);
  if (v24)
  {
    *(a3 + 80) |= 1u;
    v6 = __p[1];
    *a3 = __p[0];
    *(a3 + 8) = v6;
    return;
  }

  if (v23 == 1)
  {
    *(a3 + 80) &= ~1u;
    *(a3 + 16) = v19;
    *(a3 + 72) = v23;
    *a3 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v19 = 0;
    *(a3 + 24) = v20;
    *(a3 + 40) = v21;
    *(a3 + 56) = v22;
  }

  else
  {
    v11 = v20;
    v7 = v21;
    v8 = v22;
    v9 = *(&v21 + 1);
    llvm::Twine::str(a2, &v12);
    v10 = v12;
    v14 = v11;
    *&v15 = v7;
    *(&v15 + 1) = v9;
    v16 = v8;
    v17 = 0;
    *(a3 + 80) &= ~1u;
    *a3 = v10;
    *(a3 + 16) = v13;
    *(a3 + 72) = 0;
    *(a3 + 56) = v16;
    *(a3 + 40) = v15;
    *(a3 + 24) = v14;
    if (v24)
    {
      return;
    }
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void llvm::vfs::RedirectingFileSystem::status(llvm::vfs::RedirectingFileSystem *this@<X0>, llvm::formatv_object_base **a2@<X1>, uint64_t a3@<X8>)
{
  v32[32] = *MEMORY[0x277D85DE8];
  *v31 = v32;
  *&v31[8] = xmmword_25736B790;
  llvm::Twine::toVector(a2, v31);
  v6 = (*(*this + 112))(this, v31);
  if (v6)
  {
    *(a3 + 80) |= 1u;
    *a3 = v6;
    *(a3 + 8) = v7;
    goto LABEL_3;
  }

  if (*(this + 26) == 1)
  {
    v25[8] = 261;
    v24 = *v31;
    llvm::vfs::RedirectingFileSystem::getExternalStatus(this, a2, a3);
    if ((*(a3 + 80) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  llvm::vfs::RedirectingFileSystem::lookupPath(this, *v31, *&v31[8], &v24);
  if (v30)
  {
    if (!*(this + 26))
    {
      v11 = v24;
      v12 = *(&v24 + 1);
      if (std::generic_category() == v12 && v11 == 2)
      {
        WORD4(v19) = 261;
        v17 = *v31;
        goto LABEL_26;
      }
    }

    v8 = v24;
    *(a3 + 80) |= 1u;
    *a3 = v8;
    if (v30)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = 261;
    v15 = *v31;
    llvm::vfs::RedirectingFileSystem::status(&v15, this, a2, &v24, &v17);
    if (v23)
    {
      if (!*(this + 26))
      {
        v13 = v17;
        v14 = *(&v17 + 1);
        if ((!v26 || *(v26 + 8) == 1) && std::generic_category() == v14 && v13 == 2)
        {
          v16 = 261;
          v15 = *v31;
LABEL_26:
          llvm::vfs::RedirectingFileSystem::getExternalStatus(this, a2, a3);
          if (v30)
          {
            goto LABEL_3;
          }

          goto LABEL_27;
        }
      }

      *(a3 + 80) |= 1u;
      v9 = *(&v17 + 1);
      *a3 = v17;
      *(a3 + 8) = v9;
      if (v30)
      {
        goto LABEL_3;
      }
    }

    else
    {
      *(a3 + 80) &= ~1u;
      *a3 = v17;
      *(a3 + 16) = v18;
      v10 = v20;
      *(a3 + 24) = v19;
      *(a3 + 40) = v10;
      *(a3 + 56) = v21;
      *(a3 + 72) = v22;
      if (v30)
      {
        goto LABEL_3;
      }
    }
  }

LABEL_27:
  if (v29 == 1 && v28 < 0)
  {
    operator delete(__p);
  }

  if (v24 != v25)
  {
    free(v24);
  }

LABEL_3:
  if (*v31 != v32)
  {
    free(*v31);
  }
}

uint64_t llvm::vfs::RedirectingFileSystem::exists(llvm::vfs::RedirectingFileSystem *this, const llvm::Twine *a2)
{
  v37[32] = *MEMORY[0x277D85DE8];
  v35 = v37;
  v36 = xmmword_25736B790;
  llvm::Twine::toVector(a2, &v35);
  if ((*(*this + 112))(this, &v35))
  {
    v3 = 0;
    goto LABEL_3;
  }

  if (*(this + 26) == 1)
  {
    v5 = *(this + 8);
    v29[8] = 261;
    v27 = v35;
    v28 = v36;
    if ((*(*v5 + 96))(v5, &v27))
    {
      v3 = 1;
      goto LABEL_3;
    }
  }

  llvm::vfs::RedirectingFileSystem::lookupPath(this, v35, v36, &v27);
  if (v34)
  {
    if (*(this + 26))
    {
      v3 = 0;
    }

    else
    {
      v10 = v27;
      v11 = v28;
      v3 = 0;
      if (std::generic_category() == v11 && v10 == 2)
      {
        v12 = *(this + 8);
        v26[4] = 261;
        v24 = v35;
        *&v25 = v36;
        v3 = (*(*v12 + 96))(v12, &v24);
      }
    }

    goto LABEL_52;
  }

  v6 = *(v30 + 8);
  if (v6 == 2)
  {
    v9 = *(v30 + 40);
    v8 = *(v30 + 63);
    v7 = xmmword_25736B790;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v9 = (v30 + 40);
LABEL_25:
      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      goto LABEL_26;
    }

    v8 = *(v30 + 48);
LABEL_24:
    if (!v9)
    {
      v14 = 0;
      v13 = 0;
      __dst = 0;
      v21 = 0;
      v22 = 0;
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  v7 = xmmword_25736B790;
  if (v6 == 1)
  {
    v8 = __len;
    if ((__len & 0x8000000000000000) == 0)
    {
      v9 = __p;
LABEL_26:
      if (v8 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v22) = v8;
      if (v8)
      {
        memmove(&__dst, v9, v8);
      }

      v7 = xmmword_25736B790;
      *(&__dst + v8) = 0;
      v13 = HIBYTE(v22);
      v9 = __dst;
      v14 = v21;
LABEL_32:
      if ((v13 & 0x80u) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = v9;
      }

      if ((v13 & 0x80u) == 0)
      {
        v16 = v13;
      }

      else
      {
        v16 = v14;
      }

      v24 = v26;
      v25 = v7;
      if (v16 >= 0x101)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      v17 = 0;
      if (v16)
      {
        memcpy(v24, p_dst, v16);
        v17 = v25;
      }

      *&v25 = v17 + v16;
      if (SHIBYTE(v22) < 0)
      {
        operator delete(v9);
      }

      if ((*(*this + 112))(this, &v24))
      {
        goto LABEL_45;
      }

      v18 = *(this + 8);
      v23 = 261;
      __dst = v24;
      v21 = v25;
      if ((*(*v18 + 96))(v18, &__dst))
      {
        v3 = 1;
      }

      else
      {
        if (*(this + 26))
        {
LABEL_45:
          v3 = 0;
          goto LABEL_50;
        }

        v19 = *(this + 8);
        v23 = 261;
        __dst = v35;
        v21 = v36;
        v3 = (*(*v19 + 96))(v19, &__dst);
      }

LABEL_50:
      if (v24 != v26)
      {
        free(v24);
      }

      goto LABEL_52;
    }

    v9 = __p[0];
    v8 = __p[1];
    goto LABEL_24;
  }

  v3 = 1;
LABEL_52:
  if ((v34 & 1) == 0)
  {
    if (__len_1 == 1 && __len < 0)
    {
      operator delete(__p[0]);
    }

    if (v27 != v29)
    {
      free(v27);
    }
  }

LABEL_3:
  if (v35 != v37)
  {
    free(v35);
  }

  return v3;
}

void llvm::vfs::File::getWithPath(uint64_t *a1@<X0>, llvm::formatv_object_base **a2@<X1>, uint64_t a3@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a1[2])
  {
    v5 = *(a3 + 16);
LABEL_3:
    *(a3 + 16) = v5 | 1;
    v6 = a1[1];
    *a3 = *a1;
    *(a3 + 8) = v6;
    return;
  }

  (*(**a1 + 16))(__p);
  v8 = v22;
  if ((v23 & 1) == 0 && v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8)
  {
    v5 = *(a3 + 16);
    if ((a1[2] & 1) == 0)
    {
      *(a3 + 16) = v5 & 0xFE;
      v9 = *a1;
      *a1 = 0;
      *a3 = v9;
      return;
    }

    goto LABEL_3;
  }

  *(a3 + 16) &= ~1u;
  v10 = *a1;
  *a1 = 0;
  *a3 = v10;
  (*(*v10 + 24))(__p, v10);
  if ((v21 & 1) == 0)
  {
    llvm::Twine::str(a2, v17);
    if ((v20 & 0x80u) == 0)
    {
      v11 = v20;
    }

    else
    {
      v11 = __p[1];
    }

    v12 = v18;
    v13 = v18;
    if ((v18 & 0x80u) != 0)
    {
      v12 = v17[1];
    }

    if (v11 == v12)
    {
      if ((v20 & 0x80u) == 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      if ((v18 & 0x80u) == 0)
      {
        v15 = v17;
      }

      else
      {
        v15 = v17[0];
      }

      v16 = memcmp(v14, v15, v11) != 0;
      if ((v13 & 0x80000000) == 0)
      {
LABEL_28:
        if (v16)
        {
          (*(*v10 + 56))(v10, a2);
        }

        goto LABEL_30;
      }
    }

    else
    {
      v16 = 1;
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_28;
      }
    }

    operator delete(v17[0]);
    goto LABEL_28;
  }

LABEL_30:
  if ((v21 & 1) == 0 && v20 < 0)
  {
    operator delete(__p[0]);
  }
}

void llvm::vfs::RedirectingFileSystem::openFileForRead(llvm::vfs::RedirectingFileSystem *this@<X0>, llvm::formatv_object_base **a2@<X1>, uint64_t a3@<X8>)
{
  v74[32] = *MEMORY[0x277D85DE8];
  *v73 = v74;
  *&v73[8] = xmmword_25736B790;
  llvm::Twine::toVector(a2, v73);
  v6 = (*(*this + 112))(this, v73);
  if (v6)
  {
    *(a3 + 16) |= 1u;
    *a3 = v6;
    *(a3 + 8) = v7;
    goto LABEL_3;
  }

  if (*(this + 26) != 1)
  {
    goto LABEL_11;
  }

  v8 = *(this + 8);
  v65[8] = 261;
  v64 = *v73;
  (*(*v8 + 48))(v71);
  llvm::vfs::File::getWithPath(v71, a2, a3);
  if ((v72 & 1) == 0)
  {
    v9 = v71[0];
    v71[0] = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  if (*(a3 + 16))
  {
LABEL_11:
    llvm::vfs::RedirectingFileSystem::lookupPath(this, *v73, *&v73[8], &v64);
    if (v70)
    {
      if (!*(this + 26) && (v16 = v64, v17 = *(&v64 + 1), std::generic_category() == v17) && v16 == 2)
      {
        v18 = *(this + 8);
        v61[4] = 261;
        *v60 = *v73;
        (*(*v18 + 48))(v62);
        llvm::vfs::File::getWithPath(v62, a2, a3);
        if ((v63 & 1) == 0)
        {
          v19 = v62[0];
          v62[0] = 0;
          if (v19)
          {
            (*(*v19 + 8))(v19);
          }
        }
      }

      else
      {
        v10 = *(&v64 + 1);
        v11 = v64;
        *(a3 + 16) |= 1u;
        *a3 = v11;
        *(a3 + 8) = v10;
      }

      goto LABEL_80;
    }

    v12 = *(v66 + 8);
    if (v12 == 1)
    {
      v15 = __len;
      v13 = xmmword_25736B790;
      if ((__len & 0x8000000000000000) == 0)
      {
        v14 = v67;
LABEL_30:
        if (v15 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v15;
        if (v15)
        {
          memmove(&__dst, v14, v15);
        }

        v13 = xmmword_25736B790;
        __dst.__r_.__value_.__s.__data_[v15] = 0;
        v21 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        size = __dst.__r_.__value_.__l.__size_;
        v23 = __dst.__r_.__value_.__r.__words[0];
LABEL_36:
        if ((v21 & 0x80u) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = v23;
        }

        if ((v21 & 0x80u) == 0)
        {
          v25 = v21;
        }

        else
        {
          v25 = size;
        }

        *v60 = v61;
        *&v60[8] = v13;
        if (v25 >= 0x101)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v26 = 0;
        if (v25)
        {
          memcpy(*v60, p_dst, v25);
          v26 = *&v60[8];
        }

        *&v60[8] = v26 + v25;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23);
        }

        v27 = (*(*this + 112))(this, v60);
        if (v27)
        {
          *(a3 + 16) |= 1u;
          *a3 = v27;
          *(a3 + 8) = v28;
          goto LABEL_78;
        }

        v29 = v66;
        v30 = *(this + 8);
        WORD4(v48) = 261;
        *&__dst.__r_.__value_.__l.__data_ = *v60;
        (*(*v30 + 48))(v55);
        v46 = 261;
        __p[0] = v14;
        __p[1] = v15;
        llvm::vfs::File::getWithPath(v55, __p, &v57);
        if ((v56 & 1) == 0)
        {
          v31 = v55[0];
          v55[0] = 0;
          if (v31)
          {
            (*(*v31 + 8))(v31);
          }
        }

        if (v59)
        {
          if (*(this + 26) || (v36 = v57, v37 = v58, v66) && *(v66 + 8) != 1 || std::generic_category() != v37 || v36 != 2)
          {
            *(a3 + 16) |= 1u;
            v32 = v58;
            *a3 = v57;
            *(a3 + 8) = v32;
            goto LABEL_78;
          }

          v38 = *(this + 8);
          WORD4(v48) = 261;
          *&__dst.__r_.__value_.__l.__data_ = *v73;
          (*(*v38 + 48))(v53);
          llvm::vfs::File::getWithPath(v53, a2, a3);
          if ((v54 & 1) != 0 || (v39 = v53[0], v53[0] = 0, !v39))
          {
LABEL_78:
            if (*v60 != v61)
            {
              free(*v60);
            }

            goto LABEL_80;
          }
        }

        else
        {
          (*(*v57 + 16))(&__dst);
          if ((v52 & 1) == 0)
          {
            v34 = *(v29 + 64);
            if (v34)
            {
              v35 = v34 == 1;
            }

            else
            {
              v35 = *(this + 98);
            }

            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v40, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
            }

            else
            {
              v40 = __dst;
            }

            v41 = v48;
            v42 = v49;
            v43 = v50;
            v44 = v51;
            getRedirectedFileStatus(__p, a2, v35 & 1, &v40);
            if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v40.__r_.__value_.__l.__data_);
            }
          }

          v33 = *&__dst.__r_.__value_.__l.__data_;
          *(a3 + 16) |= 1u;
          *a3 = v33;
          if (v59)
          {
            goto LABEL_78;
          }

          v39 = v57;
          if (!v57)
          {
            goto LABEL_78;
          }
        }

        (*(*v39 + 8))(v39);
        goto LABEL_78;
      }

      v14 = v67[0];
      v15 = v67[1];
    }

    else
    {
      v13 = xmmword_25736B790;
      if (v12 != 2)
      {
        v20 = std::generic_category();
        *(a3 + 16) |= 1u;
        *a3 = 22;
        *(a3 + 8) = v20;
LABEL_80:
        if ((v70 & 1) == 0)
        {
          if (__len_1 == 1 && __len < 0)
          {
            operator delete(v67[0]);
          }

          if (v64 != v65)
          {
            free(v64);
          }
        }

        goto LABEL_3;
      }

      v14 = *(v66 + 40);
      v15 = *(v66 + 63);
      if ((v15 & 0x8000000000000000) == 0)
      {
        v14 = (v66 + 40);
LABEL_29:
        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        goto LABEL_30;
      }

      v15 = *(v66 + 48);
    }

    if (!v14)
    {
      size = 0;
      v23 = 0;
      v21 = 0;
      memset(&__dst, 0, sizeof(__dst));
      goto LABEL_36;
    }

    goto LABEL_29;
  }

LABEL_3:
  if (*v73 != v74)
  {
    free(*v73);
  }
}

unint64_t llvm::vfs::RedirectingFileSystem::getRealPath(uint64_t a1, uint64_t a2, void *a3)
{
  v40[32] = *MEMORY[0x277D85DE8];
  v38 = v40;
  v39 = xmmword_25736B790;
  llvm::Twine::toVector(a2, &v38);
  v5 = (*(*a1 + 112))(a1, &v38);
  LODWORD(v6) = v5;
  v7 = HIDWORD(v5);
  if (v5)
  {
    goto LABEL_2;
  }

  if (*(a1 + 104) == 1)
  {
    v9 = *(a1 + 64);
    v31[8] = 261;
    v29 = v38;
    v30 = v39;
    v10 = (*(*v9 + 80))(v9, &v29, a3);
    v7 = HIDWORD(v10);
    if (!v10)
    {
      LODWORD(v6) = 0;
      goto LABEL_2;
    }
  }

  llvm::vfs::RedirectingFileSystem::lookupPath(a1, v38, v39, &v29);
  if ((v37 & 1) == 0)
  {
    v11 = *(v32 + 8);
    if (v11 == 2)
    {
      p_p = *(v32 + 40);
      LODWORD(v13) = *(v32 + 63);
      v14 = v13 >> 31;
      if (v13 >= 0)
      {
        p_p = (v32 + 40);
      }

      v15 = (v32 + 48);
    }

    else
    {
      if (v11 != 1)
      {
        if (*(a1 + 104))
        {
          LODWORD(v6) = 22;
          std::generic_category();
          LODWORD(v7) = 0;
          if (v37)
          {
            goto LABEL_2;
          }
        }

        else
        {
          llvm::vfs::RedirectingFileSystem::LookupResult::getPath(&v29, a3);
          std::system_category();
          LODWORD(v6) = 0;
          if (v37)
          {
            goto LABEL_2;
          }
        }

        goto LABEL_42;
      }

      p_p = &__p;
      LODWORD(v13) = v35;
      v14 = v35 >> 31;
      if (v35 < 0)
      {
        p_p = __p;
      }

      v15 = &v34;
    }

    v18 = *v15;
    v13 = v13;
    if (v14)
    {
      v13 = v18;
    }

    v19 = *(a1 + 64);
    v28 = 261;
    v26 = p_p;
    v27 = v13;
    v6 = (*(*v19 + 80))(v19, &v26, a3);
    if (!v6 || *(a1 + 104) || v32 && *(v32 + 8) != 1 || ((v21 = v20, v22 = std::generic_category(), v6 == 2) ? (v23 = v22 == v21) : (v23 = 0), !v23))
    {
      v7 = HIDWORD(v6);
      if (v37)
      {
        goto LABEL_2;
      }

      goto LABEL_42;
    }

LABEL_39:
    v24 = *(a1 + 64);
    v28 = 261;
    v26 = v38;
    v27 = v39;
    v25 = (*(*v24 + 80))(v24, &v26, a3);
    LODWORD(v6) = v25;
    v7 = HIDWORD(v25);
    if (v37)
    {
      goto LABEL_2;
    }

    goto LABEL_42;
  }

  if (!*(a1 + 104))
  {
    v16 = v29;
    v17 = v30;
    if (std::generic_category() == v17 && v16 == 2)
    {
      goto LABEL_39;
    }
  }

  LODWORD(v6) = v29;
  v7 = v29 >> 32;
  if (v37)
  {
    goto LABEL_2;
  }

LABEL_42:
  if (v36 == 1 && v35 < 0)
  {
    operator delete(__p);
  }

  if (v29 != v31)
  {
    free(v29);
  }

LABEL_2:
  if (v38 != v40)
  {
    free(v38);
  }

  return v6 | (v7 << 32);
}

void llvm::vfs::getVFSFromYAML(llvm::MemoryBuffer **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = *a1;
  *a1 = 0;
  v7 = v6;
  *a6 = 0;
  llvm::vfs::RedirectingFileSystem::create(&v7);
}

void llvm::vfs::collectVFSFromYAML(llvm::MemoryBuffer **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8[60] = *MEMORY[0x277D85DE8];
  v7 = *a1;
  *a1 = 0;
  v8[0] = v7;
  *a7 = 0;
  llvm::vfs::RedirectingFileSystem::create(v8);
}

void getVFSEntries(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57[16] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  if (v5 == 1)
  {
    v55 = v57;
    v56 = xmmword_257371870;
    v14 = *(a2 + 8);
    if (v14)
    {
      v15 = a1;
      v16 = *a2;
      v17 = *a2 + 16 * v14;
      do
      {
        WORD4(__p) = 261;
        v18 = *v16;
        v19 = v16[1];
        v16 += 2;
        *&v43 = v18;
        *(&v43 + 1) = v19;
        v54 = 257;
        v51 = 257;
        v49 = 257;
        llvm::sys::path::append(&v55, &v43, &v52, v50, v48);
      }

      while (v16 != v17);
      v20 = v56;
      a1 = v15;
      if ((v56 + 1) > *(&v56 + 1))
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }
    }

    else
    {
      v20 = 0;
    }

    *(v55 + v20) = 0;
    v50[0] = v55;
    v23 = *(a1 + 40);
    v21 = a1 + 40;
    v22 = v23;
    v24 = *(v21 + 23);
    if (v24 >= 0)
    {
      v22 = v21;
    }

    if (v24 < 0)
    {
      v24 = *(v21 + 8);
    }

    v52 = v22;
    v53 = v24;
    llvm::vfs::YAMLVFSEntry::YAMLVFSEntry<char const*,llvm::StringRef>(&v43, v50, &v52, 0);
    v25 = *(a3 + 8);
    v26 = *a3;
    if (v25 < *(a3 + 12))
    {
LABEL_39:
      v39 = v26 + 56 * *(a3 + 8);
      v40 = v43;
      *(v39 + 16) = v44;
      *v39 = v40;
      v44 = 0;
      v43 = 0uLL;
      v41 = __p;
      *(v39 + 40) = v46;
      *(v39 + 24) = v41;
      v46 = 0;
      __p = 0uLL;
      *(v39 + 48) = v47;
      ++*(a3 + 8);
      if (SHIBYTE(v46) < 0)
      {
        operator delete(__p);
        if ((SHIBYTE(v44) & 0x80000000) == 0)
        {
LABEL_41:
          v42 = v55;
          if (v55 == v57)
          {
            return;
          }

          goto LABEL_42;
        }
      }

      else if ((SHIBYTE(v44) & 0x80000000) == 0)
      {
        goto LABEL_41;
      }

      operator delete(v43);
      v42 = v55;
      if (v55 == v57)
      {
        return;
      }

LABEL_42:
      free(v42);
      return;
    }

    if (v26 > &v43 || v26 + 56 * v25 <= &v43)
    {
LABEL_53:
      llvm::SmallVectorTemplateBase<llvm::vfs::YAMLVFSEntry,false>::grow();
    }

LABEL_54:
    llvm::SmallVectorTemplateBase<llvm::vfs::YAMLVFSEntry,false>::grow();
  }

  if (v5)
  {
    if (v5 == 2)
    {
      v27 = a1;
    }

    else
    {
      v27 = 0;
    }

    v55 = v57;
    v56 = xmmword_257371870;
    v28 = *(a2 + 8);
    if (v28)
    {
      v29 = *a2;
      v30 = *a2 + 16 * v28;
      do
      {
        WORD4(__p) = 261;
        v31 = *v29;
        v32 = v29[1];
        v29 += 2;
        *&v43 = v31;
        *(&v43 + 1) = v32;
        v54 = 257;
        v51 = 257;
        v49 = 257;
        llvm::sys::path::append(&v55, &v43, &v52, v50, v48);
      }

      while (v29 != v30);
      v33 = v56;
      if ((v56 + 1) > *(&v56 + 1))
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }
    }

    else
    {
      v33 = 0;
    }

    *(v55 + v33) = 0;
    v50[0] = v55;
    v36 = *(v27 + 40);
    v35 = v27 + 40;
    v34 = v36;
    v37 = *(v35 + 23);
    if (v37 >= 0)
    {
      v34 = v35;
    }

    if (v37 < 0)
    {
      v37 = *(v35 + 8);
    }

    v52 = v34;
    v53 = v37;
    llvm::vfs::YAMLVFSEntry::YAMLVFSEntry<char const*,llvm::StringRef>(&v43, v50, &v52, 0);
    v38 = *(a3 + 8);
    v26 = *a3;
    if (v38 < *(a3 + 12))
    {
      goto LABEL_39;
    }

    if (v26 > &v43 || v26 + 56 * v38 <= &v43)
    {
      goto LABEL_53;
    }

    goto LABEL_54;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v6 != v7)
  {
    v8 = *(a2 + 8);
    do
    {
      v9 = *(*v6 + 39);
      if (v9 >= 0)
      {
        v10 = *v6 + 16;
      }

      else
      {
        v10 = *(*v6 + 16);
      }

      if (v9 >= 0)
      {
        v11 = *(*v6 + 39);
      }

      else
      {
        v11 = *(*v6 + 24);
      }

      if (v8 >= *(a2 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = (*a2 + 16 * v8);
      *v12 = v10;
      v12[1] = v11;
      ++*(a2 + 8);
      v13 = *v6++;
      getVFSEntries(v13, a2, a3);
      v8 = *(a2 + 8) - 1;
      *(a2 + 8) = v8;
    }

    while (v6 != v7);
  }
}

char *llvm::vfs::YAMLVFSWriter::addEntry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11[0] = a2;
  v11[1] = a3;
  v10[0] = a4;
  v10[1] = a5;
  v9 = a6;
  v7 = *(a1 + 8);
  if (v7 >= *(a1 + 16))
  {
    result = std::vector<llvm::vfs::YAMLVFSEntry>::__emplace_back_slow_path<llvm::StringRef &,llvm::StringRef &,BOOL &>(a1, v11, v10, &v9);
  }

  else
  {
    result = llvm::vfs::YAMLVFSEntry::YAMLVFSEntry<llvm::StringRef &,llvm::StringRef &>(v7, v11, v10, a6) + 56;
  }

  *(a1 + 8) = result;
  return result;
}

char *llvm::vfs::YAMLVFSWriter::addFileMapping(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a2;
  v10[1] = a3;
  v9[0] = a4;
  v9[1] = a5;
  v8 = 0;
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 16))
  {
    result = std::vector<llvm::vfs::YAMLVFSEntry>::__emplace_back_slow_path<llvm::StringRef &,llvm::StringRef &,BOOL &>(a1, v10, v9, &v8);
  }

  else
  {
    result = llvm::vfs::YAMLVFSEntry::YAMLVFSEntry<llvm::StringRef &,llvm::StringRef &>(v6, v10, v9, 0) + 56;
  }

  *(a1 + 8) = result;
  return result;
}

char *llvm::vfs::YAMLVFSWriter::addDirectoryMapping(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a2;
  v10[1] = a3;
  v9[0] = a4;
  v9[1] = a5;
  v8 = 1;
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 16))
  {
    result = std::vector<llvm::vfs::YAMLVFSEntry>::__emplace_back_slow_path<llvm::StringRef &,llvm::StringRef &,BOOL &>(a1, v10, v9, &v8);
  }

  else
  {
    result = llvm::vfs::YAMLVFSEntry::YAMLVFSEntry<llvm::StringRef &,llvm::StringRef &>(v6, v10, v9, 1) + 56;
  }

  *(a1 + 8) = result;
  return result;
}

void llvm::vfs::YAMLVFSWriter::write(llvm::vfs::YAMLVFSWriter *this, llvm::raw_ostream *a2)
{
  v117[32] = *MEMORY[0x277D85DE8];
  v4 = *this;
  v5 = *(this + 1);
  v6 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v5 - v4) >> 3));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,llvm::vfs::YAMLVFSWriter::write(llvm::raw_ostream &)::$_0 &,llvm::vfs::YAMLVFSEntry *,false>(v4, v5, v7, 1);
  v114 = a2;
  v115 = v117;
  v116 = 0x1000000000;
  v8 = *this;
  v108 = *(this + 1);
  v9 = *(this + 14);
  v10 = *(this + 12);
  v107 = *(this + 13);
  v11 = *(this + 55);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(this + 5);
  }

  v106 = v11;
  v12 = *(a2 + 4);
  if ((*(a2 + 3) - v12) > 0x11)
  {
    *(v12 + 16) = 2604;
    *v12 = *"{\n  'version': 0,\n";
    *(a2 + 4) += 18;
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    llvm::raw_ostream::write(a2, "{\n  'version': 0,\n", 0x12uLL);
    if ((v10 & 0x100) == 0)
    {
LABEL_22:
      if ((v9 & 0x100) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_28;
    }
  }

  v13 = v114;
  v14 = *(v114 + 4);
  if (*(v114 + 3) - v14 > 0x14uLL)
  {
    qmemcpy(v14, "  'case-sensitive': '", 21);
    v15 = (*(v114 + 4) + 21);
    *(v114 + 4) = v15;
  }

  else
  {
    v13 = llvm::raw_ostream::write(v114, "  'case-sensitive': '", 0x15uLL);
    v15 = v13[4];
  }

  if (v10)
  {
    v16 = "true";
  }

  else
  {
    v16 = "false";
  }

  if (v10)
  {
    v17 = 4;
  }

  else
  {
    v17 = 5;
  }

  if (v17 <= v13[3] - v15)
  {
    v22 = v13;
    memcpy(v15, v16, v17);
    v18 = v22;
    v19 = v22[4] + v17;
    v22[4] = v19;
    if (v22[3] - v19 > 2)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v18 = llvm::raw_ostream::write(v13, v16, v17);
    v19 = v18[4];
    if (v18[3] - v19 > 2)
    {
LABEL_21:
      *(v19 + 2) = 10;
      *v19 = 11303;
      v18[4] += 3;
      goto LABEL_22;
    }
  }

  llvm::raw_ostream::write(v18, "',\n", 3uLL);
  if ((v9 & 0x100) == 0)
  {
LABEL_23:
    if ((v107 & 0x100) == 0)
    {
      goto LABEL_24;
    }

LABEL_40:
    v30 = v114;
    v31 = *(v114 + 4);
    if (*(v114 + 3) - v31 > 0x16uLL)
    {
      qmemcpy(v31, "  'overlay-relative': '", 23);
      v32 = (*(v114 + 4) + 23);
      *(v114 + 4) = v32;
    }

    else
    {
      v30 = llvm::raw_ostream::write(v114, "  'overlay-relative': '", 0x17uLL);
      v32 = v30[4];
    }

    if (v107)
    {
      v34 = "true";
    }

    else
    {
      v34 = "false";
    }

    if (v107)
    {
      v35 = 4;
    }

    else
    {
      v35 = 5;
    }

    if (v35 <= v30[3] - v32)
    {
      v42 = v30;
      memcpy(v32, v34, v35);
      v36 = v42;
      v37 = v42[4] + v35;
      v42[4] = v37;
      if (v42[3] - v37 > 2)
      {
LABEL_54:
        *(v37 + 2) = 10;
        *v37 = 11303;
        v36[4] += 3;
        v20 = v114;
        v21 = *(v114 + 4);
        if (*(v114 + 3) - v21 <= 0xCuLL)
        {
          goto LABEL_62;
        }

        goto LABEL_55;
      }
    }

    else
    {
      v36 = llvm::raw_ostream::write(v30, v34, v35);
      v37 = v36[4];
      if (v36[3] - v37 > 2)
      {
        goto LABEL_54;
      }
    }

    llvm::raw_ostream::write(v36, "',\n", 3uLL);
    v20 = v114;
    v21 = *(v114 + 4);
    if (*(v114 + 3) - v21 <= 0xCuLL)
    {
      goto LABEL_62;
    }

LABEL_55:
    qmemcpy(v21, "  'roots': [\n", 13);
    *(v20 + 4) += 13;
    if (v108 != v8)
    {
      goto LABEL_63;
    }

LABEL_56:
    v38 = v114;
    v39 = *(v114 + 4);
    if (*(v114 + 3) - v39 > 3uLL)
    {
      goto LABEL_166;
    }

LABEL_57:
    v38 = llvm::raw_ostream::write(v38, "  ]\n", 4uLL);
    v40 = v38[4];
    if (v38[3] - v40 <= 1uLL)
    {
      goto LABEL_167;
    }

    goto LABEL_58;
  }

LABEL_28:
  v23 = v114;
  v24 = *(v114 + 4);
  if (*(v114 + 3) - v24 > 0x18uLL)
  {
    qmemcpy(v24, "  'use-external-names': '", 25);
    v25 = (*(v114 + 4) + 25);
    *(v114 + 4) = v25;
  }

  else
  {
    v23 = llvm::raw_ostream::write(v114, "  'use-external-names': '", 0x19uLL);
    v25 = v23[4];
  }

  if (v9)
  {
    v26 = "true";
  }

  else
  {
    v26 = "false";
  }

  if (v9)
  {
    v27 = 4;
  }

  else
  {
    v27 = 5;
  }

  if (v27 <= v23[3] - v25)
  {
    v33 = v23;
    memcpy(v25, v26, v27);
    v28 = v33;
    v29 = v33[4] + v27;
    v33[4] = v29;
    if (v33[3] - v29 > 2)
    {
LABEL_39:
      *(v29 + 2) = 10;
      *v29 = 11303;
      v28[4] += 3;
      if ((v107 & 0x100) != 0)
      {
        goto LABEL_40;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v28 = llvm::raw_ostream::write(v23, v26, v27);
    v29 = v28[4];
    if (v28[3] - v29 > 2)
    {
      goto LABEL_39;
    }
  }

  llvm::raw_ostream::write(v28, "',\n", 3uLL);
  if ((v107 & 0x100) != 0)
  {
    goto LABEL_40;
  }

LABEL_24:
  LOBYTE(v107) = 0;
  v20 = v114;
  v21 = *(v114 + 4);
  if (*(v114 + 3) - v21 > 0xCuLL)
  {
    goto LABEL_55;
  }

LABEL_62:
  llvm::raw_ostream::write(v20, "  'roots': [\n", 0xDuLL);
  if (v108 == v8)
  {
    goto LABEL_56;
  }

LABEL_63:
  v43 = *(v8 + 23);
  v44 = *v8;
  if (v43 >= 0)
  {
    v44 = v8;
  }

  if (v43 >= 0)
  {
    v45 = *(v8 + 23);
  }

  else
  {
    v45 = v8[1];
  }

  if ((v8[6] & 1) == 0)
  {
    v44 = llvm::sys::path::parent_path(v44, v45, 0);
    v45 = v46;
  }

  v47 = *(v8 + 48);
  if ((v47 & 1) == 0)
  {
    v48 = *(v8 + 47);
    v49 = v48;
    if ((v48 & 0x80u) != 0)
    {
      v48 = v8[4];
    }

    if (v49 >= 0)
    {
      v50 = v8 + 3;
    }

    else
    {
      v50 = v8[3];
    }

    v51 = v106;
    if (v48 < v106)
    {
      v51 = v48;
    }

    if (v107)
    {
      v52 = v51;
    }

    else
    {
      v52 = 0;
    }

    v53 = v48 - v52;
    v54 = *(v8 + 23);
    if (v54 >= 0)
    {
      v55 = v8;
    }

    else
    {
      v55 = *v8;
    }

    if (v54 >= 0)
    {
      v56 = *(v8 + 23);
    }

    else
    {
      v56 = v8[1];
    }

    v57 = llvm::sys::path::filename(v55, v56, 0);
  }

  if (v108 - v8 != 56)
  {
    v68 = (v8 + 7);
    while (1)
    {
      v69 = v68;
      v70 = *(v8 + 79);
      if (v70 >= 0)
      {
        v71 = v68;
      }

      else
      {
        v71 = v8[7];
      }

      if (v70 >= 0)
      {
        v72 = *(v8 + 79);
      }

      else
      {
        v72 = v8[8];
      }

      if ((v8[13] & 1) == 0)
      {
        v71 = llvm::sys::path::parent_path(v71, v72, 0);
        v72 = v73;
      }

      v74 = v116;
      v75 = v115 + 16 * v116;
      if (v72 != *(v75 - 1) || v72 && memcmp(v71, *(v75 - 2), v72))
      {
        break;
      }

      if ((v47 & 1) == 0)
      {
        v89 = v114;
        v90 = *(v114 + 4);
        if (*(v114 + 3) - v90 > 1uLL)
        {
          v47 = 0;
          *v90 = 2604;
          *(v89 + 4) += 2;
          if ((v8[13] & 1) == 0)
          {
            goto LABEL_145;
          }
        }

        else
        {
          llvm::raw_ostream::write(v114, ",\n", 2uLL);
          v47 = 0;
          if ((v8[13] & 1) == 0)
          {
            goto LABEL_145;
          }
        }

        goto LABEL_103;
      }

LABEL_144:
      v47 = 1;
      if ((v8[13] & 1) == 0)
      {
LABEL_145:
        v93 = v8[10];
        v92 = v8 + 10;
        v91 = v93;
        v94 = *(v92 + 23);
        if (v94 >= 0)
        {
          v95 = v92;
        }

        else
        {
          v95 = v91;
        }

        v96 = v92[1];
        if (v94 >= 0)
        {
          v96 = *(v92 + 23);
        }

        v97 = v106;
        if (v96 < v106)
        {
          v97 = v96;
        }

        if (v107)
        {
          v98 = v97;
        }

        else
        {
          v98 = 0;
        }

        v99 = v96 - v98;
        v100 = *(v92 - 1);
        if (v100 >= 0)
        {
          v101 = v69;
        }

        else
        {
          v101 = *(v92 - 3);
        }

        if (v100 >= 0)
        {
          v102 = *(v92 - 1);
        }

        else
        {
          v102 = *(v92 - 2);
        }

        v103 = llvm::sys::path::filename(v101, v102, 0);
        v47 = 0;
      }

LABEL_103:
      v68 = v69 + 56;
      v8 = v69;
      if (v69 + 56 == v108)
      {
        goto LABEL_89;
      }
    }

    v76 = 1;
    if (!v74)
    {
LABEL_116:
      if ((v47 & v76 & 1) == 0)
      {
LABEL_136:
        v87 = v114;
        v88 = *(v114 + 4);
        if (*(v114 + 3) - v88 > 1uLL)
        {
          *v88 = 2604;
          *(v87 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v114, ",\n", 2uLL);
        }
      }

      goto LABEL_144;
    }

    while (1)
    {
      v77 = v115 + 16 * v74;
      v78 = *(v77 - 2);
      v79 = *(v77 - 1);
      llvm::sys::path::begin(v78, v79, 0, v112);
      llvm::sys::path::end(v78, v79, v111);
      llvm::sys::path::begin(v71, v72, 0, v110);
      llvm::sys::path::end(v71, v72, v109);
      while (!llvm::sys::path::const_iterator::operator==(v112, v111) && !llvm::sys::path::const_iterator::operator==(v110, v109))
      {
        if (__n != v110[3] || __n && memcmp(v112[2], v110[2], __n))
        {
          goto LABEL_128;
        }

        llvm::sys::path::const_iterator::operator++(v112);
        llvm::sys::path::const_iterator::operator++(v110);
      }

      if (llvm::sys::path::const_iterator::operator==(v112, v111))
      {
        goto LABEL_116;
      }

LABEL_128:
      v80 = v114;
      v81 = *(v114 + 4);
      if (*(v114 + 3) == v81)
      {
        llvm::raw_ostream::write(v114, "\n", 1uLL);
      }

      else
      {
        *v81 = 10;
        ++*(v80 + 4);
      }

      v82 = v116;
      v83 = llvm::raw_ostream::indent(v114, (4 * v116) | 2);
      v84 = v83[4];
      if (v83[3] - v84 <= 1uLL)
      {
        break;
      }

      *v84 = 2653;
      v83[4] += 2;
      v85 = llvm::raw_ostream::indent(v114, 4 * v82);
      v86 = v85[4];
      if (v85[3] == v86)
      {
LABEL_118:
        llvm::raw_ostream::write(v85, "}", 1uLL);
        v76 = 0;
        v74 = v116 - 1;
        LODWORD(v116) = v116 - 1;
        if (!v116)
        {
          goto LABEL_136;
        }
      }

      else
      {
LABEL_135:
        *v86 = 125;
        ++v85[4];
        v76 = 0;
        v74 = v116 - 1;
        LODWORD(v116) = v116 - 1;
        if (!v116)
        {
          goto LABEL_136;
        }
      }
    }

    llvm::raw_ostream::write(v83, "]\n", 2uLL);
    v85 = llvm::raw_ostream::indent(v114, 4 * v82);
    v86 = v85[4];
    if (v85[3] == v86)
    {
      goto LABEL_118;
    }

    goto LABEL_135;
  }

LABEL_89:
  if (v116)
  {
    while (1)
    {
      v59 = v114;
      v60 = *(v114 + 4);
      if (*(v114 + 3) == v60)
      {
        llvm::raw_ostream::write(v114, "\n", 1uLL);
      }

      else
      {
        *v60 = 10;
        ++*(v59 + 4);
      }

      v61 = v116;
      v62 = llvm::raw_ostream::indent(v114, (4 * v116) | 2);
      v63 = v62[4];
      if (v62[3] - v63 > 1uLL)
      {
        *v63 = 2653;
        v62[4] += 2;
        v64 = llvm::raw_ostream::indent(v114, 4 * v61);
        v65 = v64[4];
        if (v64[3] != v65)
        {
          goto LABEL_91;
        }

LABEL_99:
        llvm::raw_ostream::write(v64, "}", 1uLL);
        LODWORD(v116) = v116 - 1;
        if (!v116)
        {
          break;
        }
      }

      else
      {
        llvm::raw_ostream::write(v62, "]\n", 2uLL);
        v64 = llvm::raw_ostream::indent(v114, 4 * v61);
        v65 = v64[4];
        if (v64[3] == v65)
        {
          goto LABEL_99;
        }

LABEL_91:
        *v65 = 125;
        ++v64[4];
        LODWORD(v116) = v116 - 1;
        if (!v116)
        {
          break;
        }
      }
    }
  }

  v66 = v114;
  v67 = *(v114 + 4);
  if (*(v114 + 3) == v67)
  {
    llvm::raw_ostream::write(v114, "\n", 1uLL);
  }

  else
  {
    *v67 = 10;
    ++*(v66 + 4);
  }

  v38 = v114;
  v39 = *(v114 + 4);
  if (*(v114 + 3) - v39 <= 3uLL)
  {
    goto LABEL_57;
  }

LABEL_166:
  *v39 = 173875232;
  v105 = v38[3];
  v40 = (v38[4] + 4);
  v38[4] = v40;
  if ((v105 - v40) <= 1)
  {
LABEL_167:
    llvm::raw_ostream::write(v38, "}\n", 2uLL);
    v41 = v115;
    if (v115 == v117)
    {
      return;
    }

    goto LABEL_168;
  }

LABEL_58:
  *v40 = 2685;
  v38[4] += 2;
  v41 = v115;
  if (v115 != v117)
  {
LABEL_168:
    free(v41);
  }
}

void *llvm::vfs::recursive_directory_iterator::recursive_directory_iterator(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[1] = 0;
  *a1 = a2;
  a1[2] = 0;
  (*(*a2 + 56))(&v7, a2, a3, a4);
  if (v7)
  {
    operator new();
  }

  v5 = v8;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

llvm::vfs::recursive_directory_iterator *llvm::vfs::recursive_directory_iterator::increment(llvm::vfs::recursive_directory_iterator *this, std::error_code *a2)
{
  v4 = *(this + 1);
  if (*(v4 + 24) == 1)
  {
    *(v4 + 24) = 0;
    goto LABEL_14;
  }

  if (*(*(*(v4 + 8) - 16) + 32) != 3)
  {
LABEL_14:
    v10 = *(v4 + 8);
    if (*v4 == v10)
    {
      goto LABEL_28;
    }

    while (1)
    {
      *&a2->__val_ = (*(**(v10 - 16) + 16))(*(v10 - 16));
      a2->__cat_ = v12;
      v13 = *(v10 - 16);
      v14 = *(v13 + 31);
      v15 = *(v13 + 16);
      if ((v14 & 0x80u) == 0)
      {
        v15 = v14;
      }

      if (!v15)
      {
        v19 = *(v10 - 8);
        *(v10 - 16) = 0;
        *(v10 - 8) = 0;
        if (!v19)
        {
          goto LABEL_21;
        }

        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }
      }

      if (*(v10 - 16))
      {
        if (**(this + 1) == *(*(this + 1) + 8))
        {
LABEL_28:
          v8 = *(this + 2);
          *(this + 1) = 0;
          *(this + 2) = 0;
          if (v8)
          {
            goto LABEL_29;
          }
        }

        return this;
      }

LABEL_21:
      v16 = *(this + 1);
      v17 = *(v16 + 8);
      v18 = *(v17 - 8);
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }

      *(v16 + 8) = v17 - 16;
      v11 = *(this + 1);
      v10 = v11[1];
      if (*v11 == v10)
      {
        goto LABEL_28;
      }
    }
  }

  (*(**this + 56))(&v21);
  if (!v21)
  {
    v9 = *(&v21 + 1);
    if (*(&v21 + 1) && !atomic_fetch_add((*(&v21 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v4 = *(this + 1);
    goto LABEL_14;
  }

  v5 = *(this + 1);
  v6 = *(v5 + 8);
  if (v6 >= *(v5 + 16))
  {
    *(v5 + 8) = std::vector<llvm::vfs::directory_iterator>::__emplace_back_slow_path<llvm::vfs::directory_iterator const&>(*(this + 1), &v21);
    v8 = *(&v21 + 1);
    if (*(&v21 + 1))
    {
      goto LABEL_29;
    }
  }

  else
  {
    v7 = *(&v21 + 1);
    *v6 = v21;
    v6[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    *(v5 + 8) = v6 + 2;
    v8 = *(&v21 + 1);
    if (*(&v21 + 1))
    {
LABEL_29:
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  return this;
}

void *llvm::vfs::TracingFileSystem::printImpl(void *result, llvm::raw_ostream *this, int a3, int a4)
{
  v7 = result;
  if (a4)
  {
    v8 = a4;
    do
    {
      while (1)
      {
        v9 = *(this + 4);
        if (*(this + 3) - v9 > 1uLL)
        {
          break;
        }

        result = llvm::raw_ostream::write(this, "  ", 2uLL);
        if (!--v8)
        {
          goto LABEL_6;
        }
      }

      *v9 = 8224;
      *(this + 4) += 2;
      --v8;
    }

    while (v8);
  }

LABEL_6:
  v10 = *(this + 4);
  if ((*(this + 3) - v10) > 0x11)
  {
    *(v10 + 16) = 2669;
    *v10 = *"TracingFileSystem\n";
    *(this + 4) += 18;
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(this, "TracingFileSystem\n", 0x12uLL);
    if (!a3)
    {
      return result;
    }
  }

  if (a4)
  {
    v11 = a4;
    do
    {
      while (1)
      {
        v12 = *(this + 4);
        if (*(this + 3) - v12 <= 1uLL)
        {
          break;
        }

        *v12 = 8224;
        *(this + 4) += 2;
        if (!--v11)
        {
          goto LABEL_13;
        }
      }

      llvm::raw_ostream::write(this, "  ", 2uLL);
      --v11;
    }

    while (v11);
  }

LABEL_13:
  v13 = *(this + 4);
  if (*(this + 3) - v13 > 0xEuLL)
  {
    qmemcpy(v13, "NumStatusCalls=", 15);
    *(this + 4) += 15;
    v15 = llvm::raw_ostream::operator<<(this, *(v7 + 24));
    v16 = *(v15 + 4);
    if (*(v15 + 3) != v16)
    {
LABEL_15:
      *v16 = 10;
      ++*(v15 + 4);
      if (!a4)
      {
        goto LABEL_25;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v14 = llvm::raw_ostream::write(this, "NumStatusCalls=", 0xFuLL);
    v15 = llvm::raw_ostream::operator<<(v14, *(v7 + 24));
    v16 = *(v15 + 4);
    if (*(v15 + 3) != v16)
    {
      goto LABEL_15;
    }
  }

  llvm::raw_ostream::write(v15, "\n", 1uLL);
  if (!a4)
  {
    goto LABEL_25;
  }

LABEL_21:
  v17 = a4;
  do
  {
    while (1)
    {
      v18 = *(this + 4);
      if (*(this + 3) - v18 <= 1uLL)
      {
        break;
      }

      *v18 = 8224;
      *(this + 4) += 2;
      if (!--v17)
      {
        goto LABEL_25;
      }
    }

    llvm::raw_ostream::write(this, "  ", 2uLL);
    --v17;
  }

  while (v17);
LABEL_25:
  v19 = *(this + 4);
  if (*(this + 3) - v19 > 0x17uLL)
  {
    qmemcpy(v19, "NumOpenFileForReadCalls=", 24);
    *(this + 4) += 24;
    v21 = llvm::raw_ostream::operator<<(this, *(v7 + 32));
    v22 = *(v21 + 4);
    if (*(v21 + 3) != v22)
    {
LABEL_27:
      *v22 = 10;
      ++*(v21 + 4);
      if (!a4)
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v20 = llvm::raw_ostream::write(this, "NumOpenFileForReadCalls=", 0x18uLL);
    v21 = llvm::raw_ostream::operator<<(v20, *(v7 + 32));
    v22 = *(v21 + 4);
    if (*(v21 + 3) != v22)
    {
      goto LABEL_27;
    }
  }

  llvm::raw_ostream::write(v21, "\n", 1uLL);
  if (!a4)
  {
    goto LABEL_35;
  }

LABEL_31:
  v23 = a4;
  do
  {
    while (1)
    {
      v24 = *(this + 4);
      if (*(this + 3) - v24 <= 1uLL)
      {
        break;
      }

      *v24 = 8224;
      *(this + 4) += 2;
      if (!--v23)
      {
        goto LABEL_35;
      }
    }

    llvm::raw_ostream::write(this, "  ", 2uLL);
    --v23;
  }

  while (v23);
LABEL_35:
  v25 = *(this + 4);
  if ((*(this + 3) - v25) > 0x10)
  {
    *(v25 + 16) = 61;
    *v25 = *"NumDirBeginCalls=";
    *(this + 4) += 17;
    v27 = llvm::raw_ostream::operator<<(this, *(v7 + 40));
    v28 = *(v27 + 4);
    if (*(v27 + 3) != v28)
    {
LABEL_37:
      *v28 = 10;
      ++*(v27 + 4);
      if (!a4)
      {
        goto LABEL_45;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v26 = llvm::raw_ostream::write(this, "NumDirBeginCalls=", 0x11uLL);
    v27 = llvm::raw_ostream::operator<<(v26, *(v7 + 40));
    v28 = *(v27 + 4);
    if (*(v27 + 3) != v28)
    {
      goto LABEL_37;
    }
  }

  llvm::raw_ostream::write(v27, "\n", 1uLL);
  if (!a4)
  {
    goto LABEL_45;
  }

LABEL_41:
  v29 = a4;
  do
  {
    while (1)
    {
      v30 = *(this + 4);
      if (*(this + 3) - v30 <= 1uLL)
      {
        break;
      }

      *v30 = 8224;
      *(this + 4) += 2;
      if (!--v29)
      {
        goto LABEL_45;
      }
    }

    llvm::raw_ostream::write(this, "  ", 2uLL);
    --v29;
  }

  while (v29);
LABEL_45:
  v31 = *(this + 4);
  if ((*(this + 3) - v31) > 0x13)
  {
    *(v31 + 16) = 1030974572;
    *v31 = *"NumGetRealPathCalls=";
    *(this + 4) += 20;
    v33 = llvm::raw_ostream::operator<<(this, *(v7 + 48));
    v34 = *(v33 + 4);
    if (*(v33 + 3) != v34)
    {
LABEL_47:
      *v34 = 10;
      ++*(v33 + 4);
      if (!a4)
      {
        goto LABEL_55;
      }

      goto LABEL_51;
    }
  }

  else
  {
    v32 = llvm::raw_ostream::write(this, "NumGetRealPathCalls=", 0x14uLL);
    v33 = llvm::raw_ostream::operator<<(v32, *(v7 + 48));
    v34 = *(v33 + 4);
    if (*(v33 + 3) != v34)
    {
      goto LABEL_47;
    }
  }

  llvm::raw_ostream::write(v33, "\n", 1uLL);
  if (!a4)
  {
    goto LABEL_55;
  }

LABEL_51:
  v35 = a4;
  do
  {
    while (1)
    {
      v36 = *(this + 4);
      if (*(this + 3) - v36 <= 1uLL)
      {
        break;
      }

      *v36 = 8224;
      *(this + 4) += 2;
      if (!--v35)
      {
        goto LABEL_55;
      }
    }

    llvm::raw_ostream::write(this, "  ", 2uLL);
    --v35;
  }

  while (v35);
LABEL_55:
  v37 = *(this + 4);
  if (*(this + 3) - v37 > 0xEuLL)
  {
    qmemcpy(v37, "NumExistsCalls=", 15);
    *(this + 4) += 15;
    v39 = llvm::raw_ostream::operator<<(this, *(v7 + 56));
    v40 = *(v39 + 4);
    if (*(v39 + 3) != v40)
    {
LABEL_57:
      *v40 = 10;
      ++*(v39 + 4);
      if (!a4)
      {
        goto LABEL_65;
      }

      goto LABEL_61;
    }
  }

  else
  {
    v38 = llvm::raw_ostream::write(this, "NumExistsCalls=", 0xFuLL);
    v39 = llvm::raw_ostream::operator<<(v38, *(v7 + 56));
    v40 = *(v39 + 4);
    if (*(v39 + 3) != v40)
    {
      goto LABEL_57;
    }
  }

  llvm::raw_ostream::write(v39, "\n", 1uLL);
  if (!a4)
  {
    goto LABEL_65;
  }

LABEL_61:
  v41 = a4;
  do
  {
    while (1)
    {
      v42 = *(this + 4);
      if (*(this + 3) - v42 <= 1uLL)
      {
        break;
      }

      *v42 = 8224;
      *(this + 4) += 2;
      if (!--v41)
      {
        goto LABEL_65;
      }
    }

    llvm::raw_ostream::write(this, "  ", 2uLL);
    --v41;
  }

  while (v41);
LABEL_65:
  v43 = *(this + 4);
  if (*(this + 3) - v43 > 0xFuLL)
  {
    *v43 = *"NumIsLocalCalls=";
    *(this + 4) += 16;
    v45 = llvm::raw_ostream::operator<<(this, *(v7 + 64));
    v46 = *(v45 + 4);
    if (*(v45 + 3) != v46)
    {
      goto LABEL_67;
    }

LABEL_69:
    llvm::raw_ostream::write(v45, "\n", 1uLL);
    goto LABEL_70;
  }

  v44 = llvm::raw_ostream::write(this, "NumIsLocalCalls=", 0x10uLL);
  v45 = llvm::raw_ostream::operator<<(v44, *(v7 + 64));
  v46 = *(v45 + 4);
  if (*(v45 + 3) == v46)
  {
    goto LABEL_69;
  }

LABEL_67:
  *v46 = 10;
  ++*(v45 + 4);
LABEL_70:
  v47 = *(**(v7 + 16) + 136);

  return v47();
}

void llvm::vfs::ProxyFileSystem::~ProxyFileSystem(llvm::vfs::ProxyFileSystem *this)
{
  *this = &unk_2868A2120;
  v1 = *(this + 2);
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 8))(v1);
    }
  }
}

{
  *this = &unk_2868A2120;
  v2 = *(this + 2);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x259C63180);
}

void llvm::vfs::TracingFileSystem::~TracingFileSystem(llvm::vfs::TracingFileSystem *this)
{
  *this = &unk_2868A2120;
  v1 = *(this + 2);
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 8))(v1);
    }
  }
}

{
  *this = &unk_2868A2120;
  v2 = *(this + 2);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x259C63180);
}

uint64_t llvm::vfs::TracingFileSystem::status(uint64_t a1)
{
  v1 = *(a1 + 16);
  ++*(a1 + 24);
  return (*(*v1 + 40))(v1);
}

void llvm::vfs::File::getName(llvm::vfs::File *this@<X0>, uint64_t a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  (*(*this + 16))(&__p);
  if (v12)
  {
    v3 = __p;
    v4 = v10;
    *(a2 + 24) |= 1u;
    *a2 = v3;
    *(a2 + 8) = v4;
  }

  else
  {
    if (v11 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v11 >= 0)
    {
      v6 = v11;
    }

    else
    {
      v6 = v10;
    }

    if (p_p)
    {
      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (v6 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v8) = v6;
      if (v6)
      {
        memmove(&__dst, p_p, v6);
      }

      *(&__dst + v6) = 0;
    }

    else
    {
      __dst = 0uLL;
      v8 = 0;
    }

    *(a2 + 24) &= ~1u;
    *a2 = __dst;
    *(a2 + 16) = v8;
    if ((v12 & 1) == 0 && v11 < 0)
    {
      operator delete(__p);
    }
  }
}

void llvm::vfs::OverlayFileSystem::~OverlayFileSystem(llvm::vfs::OverlayFileSystem *this)
{
  *this = &unk_2868A1E18;
  v2 = *(this + 2);
  v3 = *(this + 6);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = v2 - 8;
    do
    {
      v6 = *&v5[v4];
      if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v6 + 8))(v6);
      }

      v4 -= 8;
    }

    while (v4);
    v2 = *(this + 2);
  }

  if (v2 != this + 32)
  {
    free(v2);
  }
}

{
  *this = &unk_2868A1E18;
  v2 = *(this + 2);
  v3 = *(this + 6);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = v2 - 8;
    do
    {
      v6 = *&v5[v4];
      if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v6 + 8))(v6);
      }

      v4 -= 8;
    }

    while (v4);
    v2 = *(this + 2);
  }

  if (v2 != this + 32)
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

void llvm::vfs::InMemoryFileSystem::getCurrentWorkingDirectory(llvm::vfs::InMemoryFileSystem *this@<X0>, std::string *a2@<X8>)
{
  a2[1].__r_.__value_.__s.__data_[0] &= ~1u;
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 3), *(this + 4));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 24);
    a2->__r_.__value_.__r.__words[2] = *(this + 5);
  }
}

void llvm::vfs::RedirectingFileSystem::~RedirectingFileSystem(void **this)
{
  *this = &unk_2868A1F80;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  v2 = this[8];
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  v3 = this[2];
  if (v3)
  {
    v4 = this[3];
    v5 = this[2];
    if (v4 != v3)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v3);
      v5 = this[2];
    }

    this[3] = v3;
    operator delete(v5);
  }
}

{
  *this = &unk_2868A1F80;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  v2 = this[8];
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  v3 = this[2];
  if (v3)
  {
    v4 = this[3];
    v5 = this[2];
    if (v4 != v3)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v3);
      v5 = this[2];
    }

    this[3] = v3;
    operator delete(v5);
  }

  JUMPOUT(0x259C63180);
}

uint64_t std::optional<llvm::ErrorOr<anonymous namespace::RealFileSystem::WorkingDirectory>>::operator=[abi:nn200100]<anonymous namespace::RealFileSystem::WorkingDirectory,void>(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 312) == 1)
  {
    v13 = 0;
    v7 = v9;
    v4 = xmmword_257371870;
    v8 = xmmword_257371870;
    if (a2[1])
    {
      llvm::SmallVectorImpl<char>::operator=(&v7, a2);
      v4 = xmmword_257371870;
    }

    v10 = v12;
    v11 = v4;
    if (a2[20])
    {
      llvm::SmallVectorImpl<char>::operator=(&v10, a2 + 19);
    }

    if ((v13 & 1) == 0)
    {
      if (v10 != v12)
      {
        free(v10);
      }

      if (v7 != v9)
      {
        free(v7);
      }
    }
  }

  else
  {
    *(a1 + 304) &= ~1u;
    *a1 = a1 + 24;
    v5 = xmmword_257371870;
    *(a1 + 8) = xmmword_257371870;
    if (a2[1])
    {
      llvm::SmallVectorImpl<char>::operator=(a1, a2);
      v5 = xmmword_257371870;
    }

    *(a1 + 152) = a1 + 176;
    *(a1 + 160) = v5;
    if (a2[20])
    {
      llvm::SmallVectorImpl<char>::operator=((a1 + 152), a2 + 19);
    }

    *(a1 + 312) = 1;
  }

  return a1;
}

void anonymous namespace::RealFileSystem::~RealFileSystem(void **this)
{
  *this = &unk_2868A23C0;
  if (*(this + 328) == 1 && (this[40] & 1) == 0)
  {
    if (this[21] != this + 24)
    {
      v1 = this;
      free(this[21]);
      this = v1;
    }

    if (this[2] != this + 5)
    {
      free(this[2]);
    }
  }
}

{
  *this = &unk_2868A23C0;
  if (*(this + 328) == 1 && (this[40] & 1) == 0)
  {
    if (this[21] != this + 24)
    {
      v2 = this;
      free(this[21]);
      this = v2;
    }

    if (this[2] != this + 5)
    {
      free(this[2]);
    }
  }

  JUMPOUT(0x259C63180);
}

void anonymous namespace::RealFileSystem::status(_anonymous_namespace_::RealFileSystem *this@<X0>, const llvm::Twine *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v22[0].st_mtimespec.tv_nsec = 0;
  v22[0].st_ctimespec.tv_sec = &v22[0].st_birthtimespec.tv_nsec;
  *&v22[0].st_ctimespec.tv_nsec = xmmword_25736B790;
  memset(v22, 0, 44);
  *(&v22[0].st_atimespec.tv_nsec + 4) = 0xFFFFLL;
  WORD2(v22[0].st_mtimespec.tv_sec) = 0;
  if (*(this + 328) == 1 && (*(this + 320) & 1) == 0)
  {
    llvm::Twine::toVector(a2, &v22[0].st_ctimespec);
    *&v19[16] = 261;
    v10 = *(this + 22);
    st_ctimespec.tv_sec = *(this + 21);
    st_ctimespec.tv_nsec = v10;
    llvm::sys::fs::make_absolute(&st_ctimespec, &v22[0].st_ctimespec);
    *&v19[16] = 261;
    st_ctimespec = v22[0].st_ctimespec;
    v6 = llvm::sys::fs::status(&st_ctimespec, v22, 1);
    if (v6)
    {
LABEL_4:
      *(a3 + 80) |= 1u;
      *a3 = v6;
      *(a3 + 8) = v7;
      tv_sec = v22[0].st_ctimespec.tv_sec;
      if (v22[0].st_ctimespec.tv_sec == &v22[0].st_birthtimespec.tv_nsec)
      {
        return;
      }

      goto LABEL_5;
    }
  }

  else
  {
    v5 = *(a2 + 1);
    st_ctimespec = *a2;
    *v19 = v5;
    *&v19[16] = *(a2 + 4);
    v6 = llvm::sys::fs::status(&st_ctimespec, v22, 1);
    if (v6)
    {
      goto LABEL_4;
    }
  }

  UniqueID = llvm::sys::fs::file_status::getUniqueID(v22);
  v13 = v12;
  LastModificationTime = llvm::sys::fs::basic_file_status::getLastModificationTime(v22);
  v15 = v22[0].st_atimespec.tv_sec;
  tv_nsec = v22[0].st_atimespec.tv_nsec;
  v17 = *&v22[0].st_rdev;
  llvm::Twine::str(a2, &st_ctimespec);
  *&v19[8] = UniqueID;
  *&v19[16] = v13;
  *&v20 = LastModificationTime;
  *(&v20 + 1) = v17;
  *&v21 = v15;
  *(&v21 + 1) = tv_nsec;
  *(a3 + 80) &= ~1u;
  *a3 = st_ctimespec;
  *(a3 + 16) = *v19;
  *(a3 + 72) = 0;
  *(a3 + 56) = v21;
  *(a3 + 40) = v20;
  *(a3 + 24) = *&v19[8];
  tv_sec = v22[0].st_ctimespec.tv_sec;
  if (v22[0].st_ctimespec.tv_sec == &v22[0].st_birthtimespec.tv_nsec)
  {
    return;
  }

LABEL_5:
  free(tv_sec);
}

void anonymous namespace::RealFileSystem::openFileForRead(_anonymous_namespace_::RealFileSystem *this@<X0>, const llvm::Twine *a2@<X1>, uint64_t a3@<X8>)
{
  v21[32] = *MEMORY[0x277D85DE8];
  v19 = v21;
  v20 = xmmword_25736B790;
  v16 = v18;
  v17 = xmmword_25736B790;
  if (*(this + 328) == 1 && (*(this + 320) & 1) == 0)
  {
    llvm::Twine::toVector(a2, &v16);
    LOWORD(v13) = 261;
    v6 = *(this + 22);
    *&v12[0] = *(this + 21);
    *(&v12[0] + 1) = v6;
    llvm::sys::fs::make_absolute(v12, &v16);
    LOWORD(v13) = 261;
    v12[0] = __PAIR128__(v17, v16);
  }

  else
  {
    v4 = *(a2 + 1);
    v12[0] = *a2;
    v12[1] = v4;
    v13 = *(a2 + 4);
  }

  llvm::sys::fs::openNativeFileForRead(v12, 0, &v19, &v14);
  if ((v15 & 1) == 0)
  {
    operator new();
  }

  v7 = v14;
  v14 = 0;
  v11 = v7;
  v8 = llvm::errorToErrorCode(&v11);
  *(a3 + 16) |= 1u;
  *a3 = v8;
  *(a3 + 8) = v9;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (v15)
  {
    v10 = v14;
    v14 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  if (v16 != v18)
  {
    free(v16);
  }

  if (v19 != v21)
  {
    free(v19);
  }
}

void anonymous namespace::RealFileSystem::dir_begin(_anonymous_namespace_::RealFileSystem *this, const llvm::Twine *a2, std::error_code *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = &v11;
  v10 = xmmword_257371870;
  if (*(this + 328) == 1 && (*(this + 320) & 1) == 0)
  {
    llvm::Twine::toVector(a2, &v9);
    v13 = 261;
    v5 = *(this + 22);
    v12[0] = *(this + 21);
    v12[1] = v5;
    llvm::sys::fs::make_absolute(v12, &v9);
    LOWORD(v8) = 261;
    v6 = __PAIR128__(v10, v9);
  }

  else
  {
    v3 = *(a2 + 1);
    v6 = *a2;
    v7 = v3;
    v8 = *(a2 + 4);
  }

  operator new();
}

unint64_t anonymous namespace::RealFileSystem::setCurrentWorkingDirectory(_anonymous_namespace_::RealFileSystem *this, const llvm::Twine *a2)
{
  v29[16] = *MEMORY[0x277D85DE8];
  if ((*(this + 328) & 1) == 0)
  {
    v4 = llvm::sys::fs::set_current_path(a2, a2);
    v5 = v4;
    v6 = HIDWORD(v4);
    return v5 | (v6 << 32);
  }

  v27 = v29;
  v28 = xmmword_257371870;
  v24 = v26;
  v25 = xmmword_257371870;
  v21 = v23;
  v22 = xmmword_257371870;
  if (*(this + 320))
  {
    v3 = *(a2 + 1);
    *v16 = *a2;
    *&v16[16] = v3;
    v17 = *(a2 + 4);
  }

  else
  {
    llvm::Twine::toVector(a2, &v21);
    LOWORD(v17) = 261;
    v7 = *(this + 22);
    *v16 = *(this + 21);
    *&v16[8] = v7;
    llvm::sys::fs::make_absolute(v16, &v21);
    LOWORD(v17) = 261;
    *v16 = v21;
    *&v16[8] = v22;
  }

  llvm::Twine::toVector(v16, &v27);
  v15 = 0;
  LOWORD(v17) = 261;
  *v16 = v27;
  *&v16[8] = v28;
  is_directory = llvm::sys::fs::is_directory(v16, &v15, v8);
  v5 = is_directory;
  if (is_directory)
  {
    v6 = HIDWORD(is_directory);
    v10 = v21;
    if (v21 == v23)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v15)
  {
    LOWORD(v17) = 261;
    *v16 = v27;
    *&v16[8] = v28;
    v11 = llvm::sys::fs::real_path(v16, &v24, 0);
    v5 = v11;
    v6 = HIDWORD(v11);
    if (v11)
    {
      v10 = v21;
      if (v21 == v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v16 = &v16[24];
      *&v16[8] = xmmword_257371870;
      v13 = v28;
      if (v28)
      {
        if (v28 >= 0x81)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        memcpy(&v16[24], v27, v28);
        *&v16[8] = v13;
      }

      v18 = v20;
      v19 = xmmword_257371870;
      v14 = v25;
      if (v25)
      {
        if (v25 >= 0x81)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        memcpy(v20, v24, v25);
        *&v19 = v14;
      }

      if (v18 != v20)
      {
        free(v18);
      }

      if (*v16 != &v16[24])
      {
        free(*v16);
      }

      std::system_category();
      v5 = 0;
      v10 = v21;
      if (v21 == v23)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

  v5 = 20;
  std::generic_category();
  LODWORD(v6) = 0;
  v10 = v21;
  if (v21 != v23)
  {
LABEL_14:
    free(v10);
  }

LABEL_15:
  if (v24 != v26)
  {
    free(v24);
  }

  if (v27 != v29)
  {
    free(v27);
  }

  return v5 | (v6 << 32);
}

void anonymous namespace::RealFileSystem::getCurrentWorkingDirectory(_anonymous_namespace_::RealFileSystem *this@<X0>, uint64_t a2@<X8>)
{
  v14[16] = *MEMORY[0x277D85DE8];
  if (*(this + 328) == 1)
  {
    if (*(this + 320))
    {
      v4 = *(this + 2);
      v3 = *(this + 3);
      *(a2 + 24) |= 1u;
      *a2 = v4;
      *(a2 + 8) = v3;
      return;
    }

    v8 = *(this + 3);
    if (v8 <= 0x7FFFFFFFFFFFFFF7)
    {
      v9 = *(this + 2);
      if (v8 >= 0x17)
      {
        operator new();
      }

      __dst[23] = *(this + 3);
      if (v8)
      {
        memmove(__dst, v9, v8);
      }

      __dst[v8] = 0;
      *(a2 + 24) &= ~1u;
      *a2 = *__dst;
      *(a2 + 16) = *&__dst[16];
      return;
    }

LABEL_23:
    std::string::__throw_length_error[abi:nn200100]();
  }

  *__dst = v14;
  *&__dst[8] = xmmword_257371870;
  v5 = llvm::sys::fs::current_path(__dst);
  if (v5)
  {
    *(a2 + 24) |= 1u;
    *a2 = v5;
    *(a2 + 8) = v6;
    v7 = *__dst;
    if (*__dst == v14)
    {
      return;
    }

    goto LABEL_21;
  }

  v10 = *&__dst[8];
  if (*&__dst[8] > 0x7FFFFFFFFFFFFFF7uLL)
  {
    goto LABEL_23;
  }

  if (*&__dst[8] >= 0x17uLL)
  {
    operator new();
  }

  HIBYTE(v12) = __dst[8];
  if (*&__dst[8])
  {
    memmove(&v11, *__dst, *&__dst[8]);
  }

  *(&v11 + v10) = 0;
  *(a2 + 24) &= ~1u;
  *a2 = v11;
  v7 = *__dst;
  *(a2 + 16) = v12;
  if (v7 != v14)
  {
LABEL_21:
    free(v7);
  }
}

unint64_t anonymous namespace::RealFileSystem::getRealPath(uint64_t a1, uint64_t a2, void *a3)
{
  v13[32] = *MEMORY[0x277D85DE8];
  v11 = v13;
  v12 = xmmword_25736B790;
  if (*(a1 + 328) == 1 && (*(a1 + 320) & 1) == 0)
  {
    llvm::Twine::toVector(a2, &v11);
    LOWORD(v10) = 261;
    v6 = *(a1 + 176);
    *&v9[0] = *(a1 + 168);
    *(&v9[0] + 1) = v6;
    llvm::sys::fs::make_absolute(v9, &v11);
    LOWORD(v10) = 261;
    v9[0] = __PAIR128__(v12, v11);
  }

  else
  {
    v4 = *(a2 + 16);
    v9[0] = *a2;
    v9[1] = v4;
    v10 = *(a2 + 32);
  }

  result = llvm::sys::fs::real_path(v9, a3, 0);
  if (v11 != v13)
  {
    v8 = result;
    free(v11);
    return v8;
  }

  return result;
}

uint64_t anonymous namespace::RealFileSystem::isLocal(_anonymous_namespace_::RealFileSystem *this, const llvm::Twine *a2, llvm::Twine *a3)
{
  v15[32] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = xmmword_25736B790;
  if (*(this + 328) == 1 && (*(this + 320) & 1) == 0)
  {
    llvm::Twine::toVector(a2, &v13);
    LOWORD(v12) = 261;
    v9 = *(this + 22);
    *&v11[0] = *(this + 21);
    *(&v11[0] + 1) = v9;
    llvm::sys::fs::make_absolute(v11, &v13);
    LOWORD(v12) = 261;
    v11[0] = __PAIR128__(v14, v13);
    result = llvm::sys::fs::is_local(v11, a3, v10);
    v6 = v13;
    if (v13 == v15)
    {
      return result;
    }
  }

  else
  {
    v4 = *(a2 + 1);
    v11[0] = *a2;
    v11[1] = v4;
    v12 = *(a2 + 4);
    result = llvm::sys::fs::is_local(v11, a3, a3);
    v6 = v13;
    if (v13 == v15)
    {
      return result;
    }
  }

  v7 = result;
  free(v6);
  return v7;
}

void *anonymous namespace::RealFileSystem::printImpl(void *result, llvm::raw_ostream *this, uint64_t a3, int a4)
{
  v5 = result;
  if (a4)
  {
    v6 = a4;
    do
    {
      while (1)
      {
        v7 = *(this + 4);
        if (*(this + 3) - v7 > 1uLL)
        {
          break;
        }

        result = llvm::raw_ostream::write(this, "  ", 2uLL);
        if (!--v6)
        {
          goto LABEL_6;
        }
      }

      *v7 = 8224;
      *(this + 4) += 2;
      --v6;
    }

    while (v6);
  }

LABEL_6:
  v8 = *(this + 4);
  if (*(this + 3) - v8 > 0x14uLL)
  {
    qmemcpy(v8, "RealFileSystem using ", 21);
    *(this + 4) += 21;
    v9 = *(this + 4);
    v10 = *(this + 3) - v9;
    if (*(v5 + 328) != 1)
    {
LABEL_8:
      if (v10 > 6)
      {
        *(v9 + 3) = 1936942435;
        *v9 = 1668248176;
        *(this + 4) += 7;
        v11 = *(this + 4);
        if ((*(this + 3) - v11) <= 4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        result = llvm::raw_ostream::write(this, "process", 7uLL);
        v11 = *(this + 4);
        if ((*(this + 3) - v11) <= 4)
        {
          goto LABEL_18;
        }
      }

LABEL_14:
      *(v11 + 4) = 10;
      *v11 = 1146569504;
      *(this + 4) += 5;
      return result;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(this, "RealFileSystem using ", 0x15uLL);
    v9 = *(this + 4);
    v10 = *(this + 3) - v9;
    if (*(v5 + 328) != 1)
    {
      goto LABEL_8;
    }
  }

  if (v10 > 2)
  {
    *(v9 + 2) = 110;
    *v9 = 30575;
    *(this + 4) += 3;
    v11 = *(this + 4);
    if ((*(this + 3) - v11) > 4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(this, "own", 3uLL);
    v11 = *(this + 4);
    if ((*(this + 3) - v11) > 4)
    {
      goto LABEL_14;
    }
  }

LABEL_18:

  return llvm::raw_ostream::write(this, " CWD\n", 5uLL);
}

uint64_t llvm::ErrorOr<anonymous namespace::RealFileSystem::WorkingDirectory>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  if ((*(a1 + 304) & 1) == 0)
  {
    v4 = *(a1 + 152);
    if (v4 != (a1 + 176))
    {
      free(v4);
    }

    if (*a1 != a1 + 24)
    {
      free(*a1);
    }
  }

  v5 = *(a1 + 304);
  if ((*(a2 + 304) & 1) == 0)
  {
    *(a1 + 304) = v5 & 0xFE;
    *a1 = a1 + 24;
    v8 = xmmword_257371870;
    *(a1 + 8) = xmmword_257371870;
    if (*(a2 + 8))
    {
      llvm::SmallVectorImpl<char>::operator=(a1, a2);
      v8 = xmmword_257371870;
    }

    *(a1 + 152) = a1 + 176;
    *(a1 + 160) = v8;
    if (*(a2 + 160))
    {
      llvm::SmallVectorImpl<char>::operator=((a1 + 152), (a2 + 152));
    }

    return a1;
  }

  *(a1 + 304) = v5 | 1;
  if (*(a2 + 304))
  {
    v6 = *(a2 + 8);
    *a1 = *a2;
  }

  else
  {
    v6 = std::system_category();
    *a1 = 0;
  }

  *(a1 + 8) = v6;
  return a1;
}

void anonymous namespace::RealFile::~RealFile(_anonymous_namespace_::RealFile *this, int *a2)
{
  *this = &unk_2868A2478;
  llvm::sys::fs::closeFile((this + 8), a2);
  *(this + 2) = -1;
  if ((*(this + 119) & 0x80000000) == 0)
  {
    if ((*(this + 39) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(*(this + 2));
    return;
  }

  operator delete(*(this + 12));
  if (*(this + 39) < 0)
  {
    goto LABEL_5;
  }
}

{
  *this = &unk_2868A2478;
  llvm::sys::fs::closeFile((this + 8), a2);
  *(this + 2) = -1;
  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
    if ((*(this + 39) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(this + 39) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(this + 2));
LABEL_3:

  JUMPOUT(0x259C63180);
}

void anonymous namespace::RealFile::status(_anonymous_namespace_::RealFile *this@<X0>, llvm::sys::fs::file_status *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = (this + 16);
  if (!*(this + 20))
  {
    memset(&v25, 0, 44);
    *(&v25.st_atimespec.tv_nsec + 4) = 0xFFFFLL;
    WORD2(v25.st_mtimespec.tv_sec) = 0;
    v25.st_mtimespec.tv_nsec = 0;
    v6 = llvm::sys::fs::status(*(this + 2), &v25, a2);
    if (v6)
    {
      *(a3 + 80) |= 1u;
      *a3 = v6;
      *(a3 + 8) = v7;
      return;
    }

    v8 = *(this + 39);
    v9 = *(this + 2);
    if (v8 >= 0)
    {
      v9 = v5;
    }

    if (v8 < 0)
    {
      v8 = *(this + 3);
    }

    v18 = 261;
    v17[0] = v9;
    v17[1] = v8;
    UniqueID = llvm::sys::fs::file_status::getUniqueID(&v25);
    v12 = v11;
    LastModificationTime = llvm::sys::fs::basic_file_status::getLastModificationTime(&v25);
    tv_sec = v25.st_atimespec.tv_sec;
    tv_nsec = v25.st_atimespec.tv_nsec;
    v16 = *&v25.st_rdev;
    llvm::Twine::str(v17, &v19);
    *&v21 = UniqueID;
    *(&v21 + 1) = v12;
    *&v22 = LastModificationTime;
    *(&v22 + 1) = v16;
    *&v23 = tv_sec;
    *(&v23 + 1) = tv_nsec;
    v24 = 0;
    if (*(this + 39) < 0)
    {
      operator delete(*v5);
    }

    *v5 = v19;
    *(v5 + 2) = v20;
    *(this + 40) = v21;
    *(this + 56) = v22;
    *(this + 72) = v23;
    *(this + 88) = v24;
    *(a3 + 80) &= ~1u;
    if ((*(this + 39) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_13:
    std::string::__init_copy_ctor_external(a3, *(this + 2), *(this + 3));
    goto LABEL_14;
  }

  *(a3 + 80) &= ~1u;
  if (*(this + 39) < 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  *a3 = *v5;
  *(a3 + 16) = *(v5 + 2);
LABEL_14:
  *(a3 + 24) = *(this + 40);
  *(a3 + 40) = *(this + 56);
  *(a3 + 56) = *(this + 72);
  *(a3 + 72) = *(this + 88);
}

double anonymous namespace::RealFile::getName@<D0>(_anonymous_namespace_::RealFile *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 119) < 0)
  {
    v3 = *(this + 13);
    if (v3)
    {
      std::string::__init_copy_ctor_external(&v11, *(this + 12), v3);
      goto LABEL_21;
    }
  }

  else if (*(this + 119))
  {
    v11 = *(this + 4);
    goto LABEL_21;
  }

  v6 = *(this + 2);
  v4 = (this + 16);
  v5 = v6;
  v7 = *(v4 + 23);
  if (v7 >= 0)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if (v7 >= 0)
  {
    v9 = *(v4 + 23);
  }

  else
  {
    v9 = v4[1];
  }

  if (v8)
  {
    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    *(&v11.__r_.__value_.__s + 23) = v9;
    if (v9)
    {
      memmove(&v11, v8, v9);
    }

    v11.__r_.__value_.__s.__data_[v9] = 0;
  }

  else
  {
    memset(&v11, 0, sizeof(v11));
  }

LABEL_21:
  a2[1].__r_.__value_.__s.__data_[0] &= ~1u;
  result = *&v11.__r_.__value_.__l.__data_;
  *a2 = v11;
  return result;
}

uint64_t anonymous namespace::RealFile::close(_anonymous_namespace_::RealFile *this, int *a2)
{
  result = llvm::sys::fs::closeFile((this + 8), a2);
  *(this + 2) = -1;
  return result;
}

void anonymous namespace::RealFile::setPath(_anonymous_namespace_::RealFile *this, llvm::formatv_object_base **a2)
{
  v24 = *MEMORY[0x277D85DE8];
  llvm::Twine::str(a2, __p);
  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  *(this + 6) = *__p;
  *(this + 14) = v17;
  (*(*this + 16))(__p, this);
  v4 = v23;
  if ((v23 & 1) == 0)
  {
    v9 = v18;
    v5 = v19;
    v6 = v21;
    v7 = v22;
    v8 = v20;
    llvm::Twine::str(a2, &v10);
    v12 = v9;
    *&v13 = v5;
    *(&v13 + 1) = v8;
    *&v14 = v6;
    *(&v14 + 1) = v7;
    v15 = 0;
    if (*(this + 39) < 0)
    {
      operator delete(*(this + 2));
    }

    *(this + 1) = v10;
    *(this + 4) = v11;
    *(this + 40) = v12;
    *(this + 56) = v13;
    *(this + 72) = v14;
    *(this + 88) = v15;
    v4 = v23;
  }

  if ((v4 & 1) == 0 && SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }
}

void std::__shared_ptr_emplace<anonymous namespace::RealFSDirIter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2868A24E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

void anonymous namespace::RealFSDirIter::~RealFSDirIter(_anonymous_namespace_::RealFSDirIter *this)
{
  *this = &unk_2868A2530;
  v1 = *(this + 6);
  if (!v1 || atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    *this = &unk_2868A1EB8;
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_6:
    operator delete(*(this + 1));
    return;
  }

  v2 = this;
  (v1->__on_zero_shared)(v1);
  std::__shared_weak_count::__release_weak(v1);
  this = v2;
  *v2 = &unk_2868A1EB8;
  if (v2[31] < 0)
  {
    goto LABEL_6;
  }
}

{
  *this = &unk_2868A2530;
  v1 = *(this + 6);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
    *v2 = &unk_2868A1EB8;
    if ((v2[31] & 0x80000000) == 0)
    {
LABEL_5:

      JUMPOUT(0x259C63180);
    }
  }

  else
  {
    *this = &unk_2868A1EB8;
    if ((*(this + 31) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  operator delete(*(this + 1));
  goto LABEL_5;
}

unint64_t anonymous namespace::RealFSDirIter::increment(_anonymous_namespace_::RealFSDirIter *this)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = llvm::sys::fs::detail::directory_iterator_increment(*(this + 5));
  v3 = *(this + 5);
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = *(v3 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(v3 + 16);
  }

  if (!v4)
  {
LABEL_16:
    v10 = 0;
    v8 = 0;
    v9 = 0;
    *(v17 + 7) = 0;
    v17[0] = 0;
    v7 = 9;
    if (*(this + 31) < 0)
    {
      goto LABEL_11;
    }

LABEL_17:
    v14 = v17[0];
    *(this + 1) = v8;
    *(this + 2) = v14;
    *(this + 23) = *(v17 + 7);
    *(this + 31) = v9;
    *(this + 8) = v7;
    return v2;
  }

  if (v5 < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v3 + 8), *(v3 + 16));
    v3 = *(this + 5);
    v7 = *(v3 + 32);
    if (v7 != 9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *(v3 + 8);
    __p.__r_.__value_.__r.__words[2] = *(v3 + 24);
    *&__p.__r_.__value_.__l.__data_ = v6;
    v7 = *(v3 + 32);
    if (v7 != 9)
    {
      goto LABEL_10;
    }
  }

  llvm::sys::fs::directory_entry::status((v3 + 8), v17);
  if (v19)
  {
    v7 = 9;
  }

  else
  {
    v7 = v18;
  }

LABEL_10:
  v17[0] = __p.__r_.__value_.__l.__size_;
  v8 = __p.__r_.__value_.__r.__words[0];
  *(v17 + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
  v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  memset(&__p, 0, sizeof(__p));
  v10 = 1;
  if ((*(this + 31) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  operator delete(*(this + 1));
  v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  v12 = v17[0];
  *(this + 1) = v8;
  *(this + 2) = v12;
  *(this + 23) = *(v17 + 7);
  *(this + 31) = v9;
  *(this + 8) = v7;
  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  if (v13 == 1)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v2;
}

uint64_t llvm::vfs::detail::InMemoryDirectory::InMemoryDirectory(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 1);
  }

  *a1 = &unk_2868A25C8;
  *(a1 + 8) = 2;
  v7 = llvm::sys::path::filename(v5, v6, 0);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = (a1 + 16);
  *(a1 + 39) = v8;
  if (v8)
  {
    memmove(v10, v7, v8);
  }

  *(v10 + v9) = 0;
  *a1 = &unk_2868A2570;
  v11 = *a2;
  *(a1 + 56) = *(a2 + 2);
  *(a1 + 40) = v11;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v12 = *(a2 + 24);
  v13 = *(a2 + 40);
  v14 = *(a2 + 56);
  *(a1 + 112) = *(a2 + 72);
  *(a1 + 80) = v13;
  *(a1 + 96) = v14;
  *(a1 + 64) = v12;
  *(a1 + 136) = 0;
  *(a1 + 128) = 0;
  *(a1 + 120) = a1 + 128;
  return a1;
}

void llvm::vfs::detail::InMemoryDirectory::~InMemoryDirectory(llvm::vfs::detail::InMemoryDirectory *this)
{
  *this = &unk_2868A2570;
  std::__tree<std::__value_type<std::string,std::unique_ptr<llvm::vfs::detail::InMemoryNode>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<llvm::vfs::detail::InMemoryNode>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<llvm::vfs::detail::InMemoryNode>>>>::destroy(this + 120, *(this + 16));
  if ((*(this + 63) & 0x80000000) == 0)
  {
    *this = &unk_2868A25C8;
    if ((*(this + 39) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(*(this + 2));
    return;
  }

  operator delete(*(this + 5));
  *this = &unk_2868A25C8;
  if (*(this + 39) < 0)
  {
    goto LABEL_5;
  }
}

{
  *this = &unk_2868A2570;
  std::__tree<std::__value_type<std::string,std::unique_ptr<llvm::vfs::detail::InMemoryNode>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<llvm::vfs::detail::InMemoryNode>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<llvm::vfs::detail::InMemoryNode>>>>::destroy(this + 120, *(this + 16));
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
    *this = &unk_2868A25C8;
    if ((*(this + 39) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *this = &unk_2868A25C8;
    if ((*(this + 39) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(this + 2));
LABEL_3:

  JUMPOUT(0x259C63180);
}

__n128 llvm::vfs::detail::InMemoryDirectory::getStatus@<Q0>(__n128 *this@<X0>, llvm::formatv_object_base **a2@<X1>, uint64_t a3@<X8>)
{
  v9 = this[4];
  v4 = this[5].n128_u64[0];
  v5 = this[6].n128_u64[0];
  v6 = this[6].n128_u64[1];
  v7 = this[5].n128_u64[1];
  llvm::Twine::str(a2, a3);
  result = v9;
  *(a3 + 24) = v9;
  *(a3 + 40) = v4;
  *(a3 + 48) = v7;
  *(a3 + 56) = v5;
  *(a3 + 64) = v6;
  *(a3 + 72) = 0;
  return result;
}

void llvm::vfs::detail::InMemoryDirectory::toString(llvm::vfs::detail::InMemoryDirectory *this@<X0>, size_t __len@<X1>, std::string *a3@<X8>)
{
  v5 = __len;
  if (__len >= 0x17)
  {
    operator new();
  }

  v17 = __len;
  if (__len)
  {
    memset(&__b, 32, __len);
  }

  *(&__b + v5) = 0;
  v6 = *(this + 5);
  v7 = *(this + 63);
  if (v7 >= 0)
  {
    v6 = this + 40;
  }

  v8 = *(this + 6);
  if (v7 >= 0)
  {
    v8 = *(this + 63);
  }

  v18[0] = &__b;
  v18[2] = v6;
  v18[3] = v8;
  v19 = 1284;
  __p[0] = v18;
  v21 = "\n";
  v22 = 770;
  llvm::Twine::str(__p, a3);
  if (v17 < 0)
  {
    operator delete(__b);
  }

  v9 = *(this + 15);
  v10 = this + 128;
  if (v9 != v10)
  {
    do
    {
      (*(**(v9 + 7) + 24))(__p);
      if (SHIBYTE(v21) >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      if (SHIBYTE(v21) >= 0)
      {
        v12 = HIBYTE(v21);
      }

      else
      {
        v12 = __p[1];
      }

      std::string::append(a3, v11, v12);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p[0]);
        v13 = *(v9 + 1);
        if (v13)
        {
          do
          {
LABEL_25:
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
          goto LABEL_14;
        }
      }

      else
      {
        v13 = *(v9 + 1);
        if (v13)
        {
          goto LABEL_25;
        }
      }

      do
      {
        v14 = *(v9 + 2);
        v15 = *v14 == v9;
        v9 = v14;
      }

      while (!v15);
LABEL_14:
      v9 = v14;
    }

    while (v14 != v10);
  }
}

void std::__tree<std::__value_type<std::string,std::unique_ptr<llvm::vfs::detail::InMemoryNode>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<llvm::vfs::detail::InMemoryNode>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<llvm::vfs::detail::InMemoryNode>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<llvm::vfs::detail::InMemoryNode>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<llvm::vfs::detail::InMemoryNode>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<llvm::vfs::detail::InMemoryNode>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::unique_ptr<llvm::vfs::detail::InMemoryNode>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<llvm::vfs::detail::InMemoryNode>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<llvm::vfs::detail::InMemoryNode>>>>::destroy(a1, *(a2 + 1));
    v4 = *(a2 + 7);
    *(a2 + 7) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}

uint64_t llvm::vfs::detail::NamedNodeOrError::NamedNodeOrError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = v11;
  v5 = xmmword_257371870;
  v10 = xmmword_257371870;
  if (&v9 == a2)
  {
    v6 = 0;
    v7 = v11;
  }

  else
  {
    v6 = *(a2 + 8);
    if (v6)
    {
      if (v6 >= 0x81)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      memcpy(v11, *a2, v6);
      *&v10 = v6;
      v7 = v9;
      v5 = xmmword_257371870;
    }

    else
    {
      v7 = v11;
    }
  }

  v12 = a3;
  *(a1 + 160) &= ~1u;
  *a1 = a1 + 24;
  *(a1 + 8) = v5;
  if (&v9 != a1 && v6)
  {
    if (v7 != v11)
    {
      *a1 = v7;
      *(a1 + 8) = v6;
      *(a1 + 16) = *(&v10 + 1);
      *(a1 + 152) = a3;
      return a1;
    }

    memcpy(*a1, v7, v6);
    v7 = v9;
    *(a1 + 8) = v6;
    *&v10 = 0;
    a3 = v12;
  }

  *(a1 + 152) = a3;
  if (v7 != v11)
  {
    free(v7);
  }

  return a1;
}

void llvm::vfs::detail::anonymous namespace::InMemoryFileAdaptor::~InMemoryFileAdaptor(void **this)
{
  *this = &unk_2868A25F8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_2868A25F8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x259C63180);
}

double llvm::vfs::detail::anonymous namespace::InMemoryFileAdaptor::status@<D0>(llvm::vfs::detail::_anonymous_namespace_::InMemoryFileAdaptor *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 1);
  v6 = 260;
  v5 = this + 16;
  (*(*v3 + 16))(&v7, v3, &v5);
  *(a2 + 80) &= ~1u;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 40) = v10;
  result = *&v11;
  *(a2 + 56) = v11;
  *(a2 + 72) = v12;
  return result;
}

char *llvm::vfs::detail::anonymous namespace::InMemoryFileAdaptor::getBuffer@<X0>(llvm::vfs::detail::_anonymous_namespace_::InMemoryFileAdaptor *this@<X0>, uint64_t a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  result = (*(**(this + 1) + 32))(v12);
  if (v13)
  {
    v5 = v12[0];
    v6 = v12[1];
    *(a2 + 16) |= 1u;
    *(a2 + 8) = v6;
  }

  else
  {
    v7 = *(v12[0] + 8);
    v8 = *(v12[0] + 16) - v7;
    v9 = (*(*v12[0] + 16))(v12[0]);
    result = llvm::MemoryBuffer::getMemBuffer(v7, v8, v9, v10, &v11);
    *(a2 + 16) &= ~1u;
    v5 = v11;
  }

  *a2 = v5;
  return result;
}

double llvm::vfs::detail::anonymous namespace::InMemoryFileAdaptor::setPath(void **this, llvm::formatv_object_base **a2)
{
  llvm::Twine::str(a2, &v4);
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  result = *&v4;
  *(this + 1) = v4;
  this[4] = v5;
  return result;
}

uint64_t llvm::vfs::RedirectingFileSystemParser::checkDuplicateOrUnknownKey(llvm ****a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *&v16 = a3;
  *(&v16 + 1) = a4;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::doFind<llvm::StringRef>(a5, &v16))
  {
    v8 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>,llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>::operator[](a5, &v16);
    v9 = *(v8 + 1);
    if (v9 == 1)
    {
      v11 = "duplicate key '";
      v12 = v16;
      v13 = 1283;
      v14[0] = &v11;
      v14[2] = "'";
      v15 = 770;
      llvm::yaml::Stream::printError(*a1, a2, v14, 0);
      return 0;
    }

    else
    {
      *(v8 + 1) = 1;
      return v9 ^ 1u;
    }
  }

  else
  {
    v14[0] = "unknown key";
    v15 = 259;
    llvm::yaml::Stream::printError(*a1, a2, v14, 0);
    return 0;
  }
}

void llvm::vfs::RedirectingFileSystemParser::parseEntry(llvm::yaml::Stream **this@<X0>, llvm::yaml::Node *a2@<X1>, llvm::vfs::RedirectingFileSystem *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v140 = *MEMORY[0x277D85DE8];
  if (a2 && *(a2 + 8) == 4)
  {
    *&v130 = "name";
    *(&v130 + 1) = 4;
    v131 = 1;
    *&v132 = "type";
    *(&v132 + 1) = 4;
    v133 = 1;
    *&v134 = "contents";
    *(&v134 + 1) = 8;
    v135 = 0;
    *&v136 = "external-contents";
    *(&v136 + 1) = 17;
    v137 = 0;
    *&v138 = "use-external-name";
    *(&v138 + 1) = 17;
    v139 = 0;
    v106 = 8;
    buffer = llvm::allocate_buffer(0xC0uLL, 8uLL);
    v104 = buffer;
    v105 = 0;
    *buffer = xmmword_25736B6D0;
    *(buffer + 24) = xmmword_25736B6D0;
    buffer[3] = xmmword_25736B6D0;
    *(buffer + 72) = xmmword_25736B6D0;
    buffer[6] = xmmword_25736B6D0;
    *(buffer + 120) = xmmword_25736B6D0;
    buffer[9] = xmmword_25736B6D0;
    *(buffer + 168) = xmmword_25736B6D0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>,llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>::try_emplace<llvm::vfs::RedirectingFileSystemParser::KeyStatus const&>(&v104, &v130, &v131, &v127);
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>,llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>::try_emplace<llvm::vfs::RedirectingFileSystemParser::KeyStatus const&>(&v104, &v132, &v133, &v127);
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>,llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>::try_emplace<llvm::vfs::RedirectingFileSystemParser::KeyStatus const&>(&v104, &v134, &v135, &v127);
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>,llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>::try_emplace<llvm::vfs::RedirectingFileSystemParser::KeyStatus const&>(&v104, &v136, &v137, &v127);
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>,llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::vfs::RedirectingFileSystemParser::KeyStatus>>::try_emplace<llvm::vfs::RedirectingFileSystemParser::KeyStatus const&>(&v104, &v138, &v139, &v127);
    __p = 0;
    v102 = 0;
    v103 = 0;
    v10 = v129;
    v127 = v129;
    v128 = xmmword_25736B790;
    v124 = v126;
    v125 = xmmword_25736B790;
    v100 = 0;
    *(a2 + 76) = 0;
    llvm::yaml::MappingNode::increment(a2);
    if (!*(a2 + 10))
    {
      if (llvm::yaml::Stream::failed(*this))
      {
        goto LABEL_132;
      }

      goto LABEL_128;
    }

    v11 = 0;
    v90 = 0;
    v91 = 0;
    v92 = a3;
    v89 = a3 + 72;
    while (1)
    {
      v12 = *(a2 + 10);
      p_dst = &v117;
      v116 = xmmword_25736B790;
      Key = llvm::yaml::KeyValueNode::getKey(v12);
      if (Key)
      {
        v14 = *(Key + 8) == 1;
      }

      else
      {
        v14 = 0;
      }

      if (!v14)
      {
        goto LABEL_9;
      }

      Value = llvm::yaml::ScalarNode::getValue(Key, &p_dst);
      v19 = v18;
      v20 = llvm::yaml::KeyValueNode::getKey(v12);
      if ((llvm::vfs::RedirectingFileSystemParser::checkDuplicateOrUnknownKey(this, v20, Value, v19, &v104) & 1) == 0)
      {
        goto LABEL_36;
      }

      if (v19 == 17)
      {
        break;
      }

      if (v19 == 8)
      {
        if (!memcmp(Value, "contents", 8uLL))
        {
          if (!v11)
          {
            v24 = llvm::yaml::KeyValueNode::getValue(v12);
            if (!v24 || (v25 = v24, *(v24 + 8) != 5))
            {
              v54 = llvm::yaml::KeyValueNode::getValue(v12);
              __dst = "expected array";
              v114 = 259;
              llvm::yaml::Stream::printError(*this, v54, &__dst, 0);
LABEL_83:
              v23 = 0;
              *a5 = 0;
              v11 = 1;
              goto LABEL_37;
            }

            *(v24 + 76) = 0;
            llvm::yaml::SequenceNode::increment(v24);
            if (!v25[10])
            {
              v11 = 1;
              v23 = 1;
              goto LABEL_37;
            }

            v26 = v92;
            v88 = v10;
            while (2)
            {
              llvm::vfs::RedirectingFileSystemParser::parseEntry(&__dst, this, v25[10], v26, 0);
              v35 = __dst;
              if (!__dst)
              {
                goto LABEL_83;
              }

              v36 = v102;
              if (v102 < v103)
              {
                __dst = 0;
                *v102 = v35;
                v102 = v36 + 8;
                v34 = __dst;
                __dst = 0;
                if (!v34)
                {
                  goto LABEL_51;
                }
              }

              else
              {
                v37 = __p;
                v38 = v102 - __p;
                v39 = (v102 - __p) >> 3;
                v40 = v39 + 1;
                if ((v39 + 1) >> 61)
                {
                  std::string::__throw_length_error[abi:nn200100]();
                }

                v41 = v103 - __p;
                if ((v103 - __p) >> 2 > v40)
                {
                  v40 = v41 >> 2;
                }

                if (v41 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v42 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v42 = v40;
                }

                if (v42)
                {
                  if (!(v42 >> 61))
                  {
                    operator new();
                  }

                  std::string::__throw_length_error[abi:nn200100]();
                }

                v43 = (8 * v39);
                __dst = 0;
                v44 = &v43[-((v102 - __p) >> 3)];
                *v43 = v35;
                v45 = (v43 + 1);
                memcpy(v44, v37, v38);
                __p = v44;
                v103 = 0;
                if (v37)
                {
                  operator delete(v37);
                }

                v10 = v88;
                v26 = v92;
                v102 = v45;
                v34 = __dst;
                __dst = 0;
                if (!v34)
                {
LABEL_51:
                  llvm::yaml::SequenceNode::increment(v25);
                  v11 = 1;
                  if (!v25[10])
                  {
                    goto LABEL_81;
                  }

                  continue;
                }
              }

              break;
            }

            (*(*v34 + 8))(v34);
            goto LABEL_51;
          }

          goto LABEL_43;
        }

        goto LABEL_31;
      }

      if (v19 != 4)
      {
        goto LABEL_31;
      }

      if (*Value == 1701667182)
      {
        Key = llvm::yaml::KeyValueNode::getValue(v12);
        if (Key && *(Key + 8) == 1)
        {
          v30 = llvm::yaml::ScalarNode::getValue(Key, &p_dst);
          v32 = v31;
          v91 = llvm::yaml::KeyValueNode::getValue(v12);
          v33 = __dst_8[0];
          *&v125 = 0;
          if (*(&v125 + 1) < __dst_8[0])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          v53 = 0;
          if (__dst_8[0])
          {
            memcpy(v124, __dst, __dst_8[0]);
            v53 = v125;
          }

          *&v125 = &v33[v53];
          if (__dst != &v113)
          {
            free(__dst);
          }

LABEL_81:
          v23 = 1;
          goto LABEL_37;
        }

LABEL_9:
        __dst = "expected string";
        v114 = 259;
        v15 = Key;
        v16 = *this;
        goto LABEL_10;
      }

      if (*Value != 1701869940)
      {
        goto LABEL_31;
      }

      Key = llvm::yaml::KeyValueNode::getValue(v12);
      if (!Key || *(Key + 8) != 1)
      {
        goto LABEL_9;
      }

      v21 = llvm::yaml::ScalarNode::getValue(Key, &p_dst);
      if (v22 == 15)
      {
        if (!memcmp(v21, "directory-remap", 0xFuLL))
        {
          v90 = 1;
          v23 = 1;
          goto LABEL_37;
        }

        goto LABEL_93;
      }

      if (v22 == 9)
      {
        if (!memcmp(v21, "directory", 9uLL))
        {
          v90 = 0;
          v23 = 1;
          goto LABEL_37;
        }

LABEL_93:
        v15 = llvm::yaml::KeyValueNode::getValue(v12);
        v29 = "unknown value for 'type'";
LABEL_44:
        __dst = v29;
        v114 = 259;
        v16 = *this;
LABEL_10:
        llvm::yaml::Stream::printError(v16, v15, &__dst, 0);
LABEL_36:
        v23 = 0;
        *a5 = 0;
        goto LABEL_37;
      }

      if (v22 != 4 || *v21 != 1701603686)
      {
        goto LABEL_93;
      }

      v23 = 1;
      v90 = 2;
LABEL_37:
      if (p_dst != &v117)
      {
        free(p_dst);
      }

      if (!v23)
      {
        goto LABEL_133;
      }

      llvm::yaml::MappingNode::increment(a2);
      if (!*(a2 + 10))
      {
        v60 = llvm::yaml::Stream::failed(*this);
        if (v60)
        {
          goto LABEL_132;
        }

        if (v11)
        {
          if (v105)
          {
            if (v106)
            {
              v61 = 24 * v106;
              v62 = v104;
              while (*v62 >= 0xFFFFFFFFFFFFFFFELL)
              {
                v62 = (v62 + 24);
                v61 -= 24;
                if (!v61)
                {
                  goto LABEL_125;
                }
              }
            }

            else
            {
              v62 = v104;
            }

            v74 = (v104 + 24 * v106);
LABEL_157:
            if (v62 != v74)
            {
              if (*(v62 + 16) != 1 || *(v62 + 17) == 1)
              {
                while (1)
                {
                  v62 = (v62 + 24);
                  if (v62 == v74)
                  {
                    goto LABEL_125;
                  }

                  if (*v62 < 0xFFFFFFFFFFFFFFFELL)
                  {
                    goto LABEL_157;
                  }
                }
              }

              v86 = *v62;
              v87 = *(v62 + 1);
              __dst = "missing key '";
              __dst_8[1] = v86;
              v113 = v87;
              v114 = 1283;
              p_dst = &__dst;
              *(&v116 + 1) = "'";
              v64 = 770;
LABEL_130:
              LOWORD(v118) = v64;
              v65 = *this;
              v66 = a2;
LABEL_131:
              llvm::yaml::Stream::printError(v65, v66, &p_dst, 0);
LABEL_132:
              *a5 = 0;
LABEL_133:
              if (v124 != v126)
              {
                free(v124);
              }

              if (v127 != v10)
              {
                free(v127);
              }

              v67 = __p;
              if (__p)
              {
                v68 = v102;
                v69 = __p;
                if (v102 != __p)
                {
                  do
                  {
                    v71 = *(v68 - 1);
                    v68 -= 8;
                    v70 = v71;
                    *v68 = 0;
                    if (v71)
                    {
                      (*(*v70 + 8))(v70);
                    }
                  }

                  while (v68 != v67);
                  v69 = __p;
                }

                v102 = v67;
                operator delete(v69);
              }

              llvm::deallocate_buffer(v104, (24 * v106));
            }
          }

LABEL_125:
          if (v90 || !v100)
          {
            if (v90 != 1 || v11 != 1)
            {
              if (a4)
              {
                LOWORD(v118) = 261;
                p_dst = v124;
                *&v116 = v125;
                v72 = 1;
                if ((llvm::sys::path::is_absolute(&p_dst, 1) & 1) == 0)
                {
                  LOWORD(v118) = 261;
                  p_dst = v124;
                  *&v116 = v125;
                  is_absolute = llvm::sys::path::is_absolute(&p_dst, 3);
                  if (is_absolute)
                  {
                    goto LABEL_152;
                  }

                  if (*(v92 + 27) == 1)
                  {
                    v82 = *(v92 + 95);
                    if (v82 >= 0)
                    {
                      v83 = v89;
                    }

                    else
                    {
                      v83 = *(v92 + 9);
                    }

                    if (v82 >= 0)
                    {
                      v84 = *(v92 + 95);
                    }

                    else
                    {
                      v84 = *(v92 + 10);
                    }

                    Absolute = llvm::vfs::RedirectingFileSystem::makeAbsolute(is_absolute, v83, v84, &v124);
                    llvm::SmallVectorImpl<char>::operator=(&v124, &p_dst);
                    if (p_dst != &v117)
                    {
                      free(p_dst);
                    }
                  }

                  else
                  {
                    Absolute = llvm::sys::fs::make_absolute(&v124);
                  }

                  if (Absolute)
                  {
                    p_dst = "entry with relative path at the root level is not discoverable";
                    LOWORD(v118) = 259;
                    v65 = *this;
                    v66 = v91;
                    goto LABEL_131;
                  }

                  LOWORD(v118) = 261;
                  p_dst = v124;
                  *&v116 = v125;
                  v72 = 1;
                  if ((llvm::sys::path::is_absolute(&p_dst, 1) & 1) == 0)
                  {
LABEL_152:
                    {
                      v72 = 3;
                    }

                    else
                    {
                      v72 = 2;
                    }
                  }
                }
              }

              else
              {
                v72 = 0;
              }

              v75 = v124;
              v76 = v125;
              llvm::sys::path::root_path(v124, v125, v72);
              if (v76 > v77)
              {
                v78 = v77;
                do
                {
                  if (!llvm::sys::path::is_separator(v76[(v75 - 1)], v72))
                  {
                    goto LABEL_169;
                  }

                  --v76;
                }

                while (v76 > v78);
                v76 = v78;
              }

LABEL_169:
              v96[0] = llvm::sys::path::filename(v75, v76, v72);
              v96[1] = v79;
              *a5 = 0;
              if (v90)
              {
                if (v90 == 1)
                {
                  std::make_unique[abi:nn200100]<llvm::vfs::RedirectingFileSystem::DirectoryRemapEntry,llvm::StringRef &,llvm::SmallString<256u>,llvm::vfs::RedirectingFileSystem::NameKind &,0>();
                }

                std::make_unique[abi:nn200100]<llvm::vfs::RedirectingFileSystem::FileEntry,llvm::StringRef &,llvm::SmallString<256u>,llvm::vfs::RedirectingFileSystem::NameKind &,0>();
              }

              v114 = 257;
              v80 = atomic_fetch_add(llvm::vfs::getNextVirtualUniqueID(void)::UID, 1u) + 1;
              v81 = 1000 * std::chrono::system_clock::now().__d_.__rep_;
              llvm::Twine::str(&__dst, &p_dst);
              v117 = -1;
              v118 = v80;
              v121 = 0;
              v119 = v81;
              v120 = 0;
              v122 = 0x1FF00000003;
              v123 = 0;
              std::make_unique[abi:nn200100]<llvm::vfs::RedirectingFileSystem::DirectoryEntry,llvm::StringRef &,std::vector<std::unique_ptr<llvm::vfs::RedirectingFileSystem::Entry>>,llvm::vfs::Status,0>();
            }

            v63 = "'contents' is not supported for 'directory-remap' entries";
          }

          else
          {
            v63 = "'use-external-name' is not supported for 'directory' entries";
          }

LABEL_129:
          p_dst = v63;
          v64 = 259;
          goto LABEL_130;
        }

LABEL_128:
        v63 = "missing key 'contents' or 'external-contents'";
        goto LABEL_129;
      }
    }

    if (!memcmp(Value, "external-contents", 0x11uLL))
    {
      if (!v11)
      {
        v46 = llvm::yaml::KeyValueNode::getValue(v12);
        if (v46 && *(v46 + 8) == 1)
        {
          v48 = llvm::yaml::ScalarNode::getValue(v46, &p_dst);
          v49 = v47;
          __dst = &v113;
          *__dst_8 = xmmword_25736B790;
          if (*(v92 + 97) == 1)
          {
            v50 = *(v92 + 95);
            if (v50 >= 0)
            {
              v51 = v89;
            }

            else
            {
              v51 = *(v92 + 9);
            }

            if (v50 >= 0)
            {
              v52 = *(v92 + 95);
            }

            else
            {
              v52 = *(v92 + 10);
            }

            llvm::SmallString<256u>::operator=(&__dst, v51, v52);
            v110 = 261;
            __src = v48;
            *&__len = v49;
            v95 = 257;
            v99 = 257;
            v97 = 257;
            llvm::sys::path::append(&__dst, &__src, &v94, &v98, v96);
          }

          else
          {
            llvm::SmallString<256u>::operator=(&__dst, v48, v47);
          }

          v55 = __src;
          if (__src == &v109)
          {
            v57 = __len;
            v58 = __dst_8[0];
            if (__dst_8[0] >= __len)
            {
              if (__len)
              {
                memmove(__dst, __src, __len);
              }
            }

            else
            {
              if (__dst_8[1] < __len)
              {
                __dst_8[0] = 0;
                llvm::SmallVectorBase<unsigned long long>::grow_pod();
              }

              if (__dst_8[0])
              {
                memmove(__dst, __src, __dst_8[0]);
              }

              if (__len != v58)
              {
                memcpy(&v58[__dst], &v58[__src], __len - v58);
              }
            }

            __dst_8[0] = v57;
            *&__len = 0;
          }

          else
          {
            if (__dst != &v113)
            {
              free(__dst);
              v55 = __src;
            }

            __dst = v55;
            v56 = __len;
            *__dst_8 = __len;
            __src = &v109;
            __len = 0uLL;
            v57 = v56;
          }

          if (__src != &v109)
          {
            free(__src);
            v57 = __dst_8[0];
          }

          *&v128 = 0;
          if (*(&v128 + 1) < v57)
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          v59 = 0;
          if (v57)
          {
            memcpy(v127, __dst, v57);
            v59 = v128;
          }

          *&v128 = v59 + v57;
          if (__dst != &v113)
          {
            free(__dst);
          }

          v23 = 1;
          v11 = 2;
        }

        else
        {
          __dst = "expected string";
          v114 = 259;
          llvm::yaml::Stream::printError(*this, v46, &__dst, 0);
          v23 = 0;
          *a5 = 0;
          v11 = 2;
        }

        goto LABEL_37;
      }

LABEL_43:
      v15 = llvm::yaml::KeyValueNode::getKey(v12);
      v29 = "entry already has 'contents' or 'external-contents'";
      goto LABEL_44;
    }

LABEL_31:
    LOBYTE(__dst) = 0;
    v27 = llvm::yaml::KeyValueNode::getValue(v12);
    if (llvm::vfs::RedirectingFileSystemParser::parseScalarBool(this, v27, &__dst))
    {
      v23 = 1;
      if (__dst)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      v100 = v28;
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v127 = "expected mapping node for file or directory entry";
  v129[4] = 259;
  llvm::yaml::Stream::printError(*this, a2, &v127, 0);
  *a5 = 0;
}

uint64_t llvm::vfs::RedirectingFileSystemParser::parseScalarBool(llvm ****this, llvm::yaml::Node *a2, BOOL *a3)
{
  v13 = &v15;
  v14 = xmmword_257373F50;
  if (!a2 || *(a2 + 8) != 1)
  {
    v16 = "expected string";
    v17 = 259;
    v9 = *this;
    goto LABEL_18;
  }

  Value = llvm::yaml::ScalarNode::getValue(a2, &v13);
  v12 = v6;
  if (v6 == 4)
  {
    if (!llvm::StringRef::compare_insensitive(&Value, "true", 4uLL))
    {
      goto LABEL_15;
    }

    v6 = v12;
  }

  if (v6 == 2)
  {
    if (!llvm::StringRef::compare_insensitive(&Value, "on", 2uLL))
    {
      goto LABEL_15;
    }

    v6 = v12;
  }

  if (v6 == 3)
  {
    if (!llvm::StringRef::compare_insensitive(&Value, "yes", 3uLL))
    {
      goto LABEL_15;
    }

    v6 = v12;
  }

  if (v6 == 5)
  {
    if (!llvm::StringRef::compare_insensitive(&Value, "false", 5uLL))
    {
      goto LABEL_31;
    }

    v6 = v12;
LABEL_23:
    if (v6 == 3)
    {
      if (!llvm::StringRef::compare_insensitive(&Value, "off", 3uLL))
      {
        goto LABEL_31;
      }

      v6 = v12;
    }

    if (v6 == 2)
    {
      if (!llvm::StringRef::compare_insensitive(&Value, "no", 2uLL))
      {
        goto LABEL_31;
      }

      v6 = v12;
    }

    if (v6 != 1)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (v6 != 1)
  {
    goto LABEL_23;
  }

  if (*Value == 49)
  {
LABEL_15:
    v7 = 1;
    *a3 = 1;
    v8 = v13;
    if (v13 == &v15)
    {
      return v7;
    }

    goto LABEL_19;
  }

LABEL_30:
  if (*Value == 48)
  {
LABEL_31:
    *a3 = 0;
    v7 = 1;
    v8 = v13;
    if (v13 == &v15)
    {
      return v7;
    }

    goto LABEL_19;
  }

LABEL_33:
  v16 = "expected BOOLean value";
  v17 = 259;
  v9 = *this;
LABEL_18:
  llvm::yaml::Stream::printError(v9, a2, &v16, 0);
  v7 = 0;
  v8 = v13;
  if (v13 != &v15)
  {
LABEL_19:
    free(v8);
  }

  return v7;
}